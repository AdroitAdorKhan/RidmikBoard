package net.hasnath.android.keyboard;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CandidateView extends View {
    private static final int MAX_SUGGESTIONS = 32;
    private static final int OUT_OF_BOUNDS_WORD_INDEX = -1;
    private static final int OUT_OF_BOUNDS_X_COORD = -1;
    private static final int SCROLL_PIXELS = 20;
    private static final int X_GAP = 10;
    private CharSequence mAddToDictionaryHint;
    private Rect mBgPadding;
    private final int mColorNormal;
    private final int mColorOther;
    private final int mColorRecommended;
    private int mCurrentWordIndex;
    private final int mDescent;
    private Drawable mDivider;
    private final GestureDetector mGestureDetector;
    private boolean mHaveMinimalSuggestion;
    private final int mMinTouchableWidth;
    private final Paint mPaint;
    private int mPopupPreviewX;
    private int mPopupPreviewY;
    private final PopupWindow mPreviewPopup;
    private final TextView mPreviewText;
    private boolean mScrolled;
    private int mSelectedIndex;
    private CharSequence mSelectedString;
    private final Drawable mSelectionHighlight;
    private LatinIME mService;
    private boolean mShowingAddToDictionary;
    private boolean mShowingCompletions;
    private final ArrayList<CharSequence> mSuggestions = new ArrayList();
    private int mTargetScrollX;
    private int mTotalWidth;
    private int mTouchX = -1;
    private boolean mTypedWordValid;
    private final int[] mWordWidth = new int[32];
    private final int[] mWordX = new int[32];
    String text;

    private class CandidateStripGestureListener extends SimpleOnGestureListener {
        private final int mTouchSlopSquare;

        public CandidateStripGestureListener(int touchSlop) {
            this.mTouchSlopSquare = touchSlop * touchSlop;
        }

        public void onLongPress(MotionEvent me) {
            if (CandidateView.this.mSuggestions.size() > 0 && me.getX() + ((float) CandidateView.this.getScrollX()) < ((float) CandidateView.this.mWordWidth[0]) && CandidateView.this.getScrollX() < 10) {
                CandidateView.this.longPressFirstWord();
            }
        }

        public boolean onDown(MotionEvent e) {
            CandidateView.this.mScrolled = false;
            return false;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (!CandidateView.this.mScrolled) {
                int deltaX = (int) (e2.getX() - e1.getX());
                int deltaY = (int) (e2.getY() - e1.getY());
                if ((deltaX * deltaX) + (deltaY * deltaY) >= this.mTouchSlopSquare) {
                    CandidateView.this.mScrolled = true;
                }
                return true;
            }
            int width = CandidateView.this.getWidth();
            CandidateView.this.mScrolled = true;
            int scrollX = CandidateView.this.getScrollX() + ((int) distanceX);
            if (scrollX < 0) {
                scrollX = 0;
            }
            if (distanceX > 0.0f && scrollX + width > CandidateView.this.mTotalWidth) {
                scrollX -= (int) distanceX;
            }
            CandidateView.this.mTargetScrollX = scrollX;
            CandidateView.this.scrollTo(scrollX, CandidateView.this.getScrollY());
            CandidateView.this.hidePreview();
            CandidateView.this.invalidate();
            return true;
        }
    }

    public CandidateView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSelectionHighlight = context.getResources().getDrawable(R.drawable.list_selector_background_pressed);
        LayoutInflater inflate = (LayoutInflater) context.getSystemService("layout_inflater");
        Resources res = context.getResources();
        this.mPreviewPopup = new PopupWindow(context);
        this.mPreviewText = (TextView) inflate.inflate(R.layout.candidate_preview, null);
        this.mPreviewPopup.setWindowLayoutMode(-2, -2);
        this.mPreviewPopup.setContentView(this.mPreviewText);
        this.mPreviewPopup.setBackgroundDrawable(null);
        this.mPreviewPopup.setAnimationStyle(R.style.KeyPreviewAnimation);
        this.mColorNormal = res.getColor(R.color.candidate_normal);
        this.mColorRecommended = res.getColor(R.color.candidate_recommended);
        this.mColorOther = res.getColor(R.color.candidate_other);
        this.mDivider = res.getDrawable(R.drawable.keyboard_suggest_strip_divider);
        this.mAddToDictionaryHint = res.getString(R.string.hint_add_to_dictionary);
        this.mPaint = new Paint();
        this.mPaint.setColor(this.mColorNormal);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setTextSize(this.mPreviewText.getTextSize());
        this.mPaint.setStrokeWidth(0.0f);
        this.mPaint.setTextAlign(Align.CENTER);
        this.mDescent = (int) this.mPaint.descent();
        this.mMinTouchableWidth = (int) res.getDimension(R.dimen.candidate_min_touchable_width);
        this.mGestureDetector = new GestureDetector(new CandidateStripGestureListener(this.mMinTouchableWidth));
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        scrollTo(0, getScrollY());
    }

    public void setService(LatinIME listener) {
        this.mService = listener;
    }

    public int computeHorizontalScrollRange() {
        return this.mTotalWidth;
    }

    protected void onDraw(Canvas canvas) {
        if (canvas != null) {
            super.onDraw(canvas);
        }
        this.mTotalWidth = 0;
        int height = getHeight();
        if (this.mBgPadding == null) {
            this.mBgPadding = new Rect(0, 0, 0, 0);
            if (getBackground() != null) {
                getBackground().getPadding(this.mBgPadding);
            }
            this.mDivider.setBounds(0, 0, this.mDivider.getIntrinsicWidth(), this.mDivider.getIntrinsicHeight());
        }
        int count = this.mSuggestions.size();
        Rect bgPadding = this.mBgPadding;
        Paint paint = this.mPaint;
        int touchX = this.mTouchX;
        int scrollX = getScrollX();
        boolean scrolled = this.mScrolled;
        boolean typedWordValid = this.mTypedWordValid;
        int y = ((int) ((((float) height) + this.mPaint.getTextSize()) - ((float) this.mDescent))) / 2;
        boolean existsAutoCompletion = false;
        boolean useBanglaFont = LatinIME.useBanglaFontInSuggestions();
        if (useBanglaFont && (LatinIME.langNow == 1 || LatinIME.langNow == 3)) {
            this.mPaint.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_UNICODE_FONT));
            paint.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_UNICODE_FONT));
        }
        int x = 0;
        int i = 0;
        while (i < count) {
            CharSequence suggestion = (CharSequence) this.mSuggestions.get(i);
            if (suggestion != null) {
                int wordLength = suggestion.length();
                paint.setColor(this.mColorNormal);
                if (this.mHaveMinimalSuggestion && ((i == 1 && !typedWordValid) || (i == 0 && typedWordValid))) {
                    if (!useBanglaFont) {
                        paint.setTypeface(Typeface.DEFAULT_BOLD);
                    }
                    paint.setColor(this.mColorRecommended);
                    existsAutoCompletion = true;
                } else if (i != 0 || (wordLength == 1 && count > 1)) {
                    paint.setColor(this.mColorOther);
                }
                int wordWidth = this.mWordWidth[i];
                if (wordWidth == 0) {
                    wordWidth = Math.max(this.mMinTouchableWidth, ((int) paint.measureText(suggestion, 0, wordLength)) + 20);
                    this.mWordWidth[i] = wordWidth;
                }
                this.mWordX[i] = x;
                if (touchX != -1 && !scrolled && touchX + scrollX >= x && touchX + scrollX < x + wordWidth) {
                    if (!(canvas == null || this.mShowingAddToDictionary)) {
                        canvas.translate((float) x, 0.0f);
                        this.mSelectionHighlight.setBounds(0, bgPadding.top, wordWidth, height);
                        this.mSelectionHighlight.draw(canvas);
                        canvas.translate((float) (-x), 0.0f);
                    }
                    this.mSelectedString = suggestion;
                    this.mSelectedIndex = i;
                }
                if (canvas != null) {
                    if (LatinIME.langNow == 1) {
                        this.text = this.mService.parser.toBangla(suggestion.toString());
                        canvas.drawText(this.text, 0, this.text.length(), (float) ((wordWidth / 2) + x), (float) y, paint);
                    } else {
                        canvas.drawText(suggestion.toString(), 0, wordLength, (float) ((wordWidth / 2) + x), (float) y, paint);
                    }
                    paint.setColor(this.mColorOther);
                    canvas.translate((float) (x + wordWidth), 0.0f);
                    if (!(this.mShowingAddToDictionary && i == 1)) {
                        this.mDivider.draw(canvas);
                    }
                    canvas.translate((float) ((-x) - wordWidth), 0.0f);
                }
                if (!useBanglaFont) {
                    paint.setTypeface(Typeface.DEFAULT);
                }
                x += wordWidth;
            }
            i++;
        }
        this.mService.onAutoCompletionStateChanged(existsAutoCompletion);
        this.mTotalWidth = x;
        if (this.mTargetScrollX != scrollX) {
            scrollToTarget();
        }
    }

    private void scrollToTarget() {
        int scrollX = getScrollX();
        if (this.mTargetScrollX > scrollX) {
            scrollX += 20;
            if (scrollX >= this.mTargetScrollX) {
                scrollTo(this.mTargetScrollX, getScrollY());
                requestLayout();
            } else {
                scrollTo(scrollX, getScrollY());
            }
        } else {
            scrollX -= 20;
            if (scrollX <= this.mTargetScrollX) {
                scrollTo(this.mTargetScrollX, getScrollY());
                requestLayout();
            } else {
                scrollTo(scrollX, getScrollY());
            }
        }
        invalidate();
    }

    public void setSuggestions(List<CharSequence> suggestions, boolean completions, boolean typedWordValid, boolean haveMinimalSuggestion) {
        clear();
        if (suggestions != null) {
            int insertCount = Math.min(suggestions.size(), 32);
            for (CharSequence suggestion : suggestions) {
                this.mSuggestions.add(suggestion);
                insertCount--;
                if (insertCount == 0) {
                    break;
                }
            }
        }
        this.mShowingCompletions = completions;
        this.mTypedWordValid = typedWordValid;
        scrollTo(0, getScrollY());
        this.mTargetScrollX = 0;
        this.mHaveMinimalSuggestion = haveMinimalSuggestion;
        onDraw(null);
        invalidate();
        requestLayout();
    }

    public boolean isShowingAddToDictionaryHint() {
        return this.mShowingAddToDictionary;
    }

    public void showAddToDictionaryHint(CharSequence word) {
        ArrayList<CharSequence> suggestions = new ArrayList();
        suggestions.add(word);
        suggestions.add(this.mAddToDictionaryHint);
        setSuggestions(suggestions, false, false, false);
        this.mShowingAddToDictionary = true;
    }

    public boolean dismissAddToDictionaryHint() {
        if (!this.mShowingAddToDictionary) {
            return false;
        }
        clear();
        return true;
    }

    List<CharSequence> getSuggestions() {
        return this.mSuggestions;
    }

    public void clear() {
        this.mSuggestions.clear();
        this.mTouchX = -1;
        this.mSelectedString = null;
        this.mSelectedIndex = -1;
        this.mShowingAddToDictionary = false;
        invalidate();
        Arrays.fill(this.mWordWidth, 0);
        Arrays.fill(this.mWordX, 0);
    }

    public boolean onTouchEvent(MotionEvent me) {
        if (!this.mGestureDetector.onTouchEvent(me)) {
            int action = me.getAction();
            int y = (int) me.getY();
            this.mTouchX = (int) me.getX();
            switch (action) {
                case 0:
                    invalidate();
                    break;
                case 1:
                    if (!(this.mScrolled || this.mSelectedString == null)) {
                        if (this.mShowingAddToDictionary) {
                            longPressFirstWord();
                            clear();
                        } else {
                            if (!this.mShowingCompletions) {
                                TextEntryState.acceptedSuggestion((CharSequence) this.mSuggestions.get(0), this.mSelectedString);
                            }
                            this.mService.pickSuggestionManually(this.mSelectedIndex, this.mSelectedString);
                        }
                    }
                    this.mSelectedString = null;
                    this.mSelectedIndex = -1;
                    requestLayout();
                    hidePreview();
                    invalidate();
                    break;
                case 2:
                    if (y <= 0 && this.mSelectedString != null) {
                        if (!this.mShowingCompletions) {
                            TextEntryState.acceptedSuggestion((CharSequence) this.mSuggestions.get(0), this.mSelectedString);
                        }
                        this.mService.pickSuggestionManually(this.mSelectedIndex, this.mSelectedString);
                        this.mSelectedString = null;
                        this.mSelectedIndex = -1;
                        break;
                    }
                default:
                    break;
            }
        }
        return true;
    }

    private void hidePreview() {
        this.mTouchX = -1;
        this.mCurrentWordIndex = -1;
        this.mPreviewPopup.dismiss();
    }

    private void showPreview(int wordIndex, String altText) {
        int oldWordIndex = this.mCurrentWordIndex;
        this.mCurrentWordIndex = wordIndex;
        if (oldWordIndex != this.mCurrentWordIndex || altText != null) {
            if (wordIndex == -1) {
                hidePreview();
                return;
            }
            CharSequence word;
            if (altText != null) {
                word = altText;
            } else {
                word = (CharSequence) this.mSuggestions.get(wordIndex);
            }
            this.mPreviewText.setText(word);
            this.mPreviewText.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            int wordWidth = (int) (this.mPaint.measureText(word, 0, word.length()) + 20.0f);
            int popupWidth = (this.mPreviewText.getPaddingLeft() + wordWidth) + this.mPreviewText.getPaddingRight();
            int popupHeight = this.mPreviewText.getMeasuredHeight();
            this.mPopupPreviewX = ((this.mWordX[wordIndex] - this.mPreviewText.getPaddingLeft()) - getScrollX()) + ((this.mWordWidth[wordIndex] - wordWidth) / 2);
            this.mPopupPreviewY = -popupHeight;
            int[] offsetInWindow = new int[2];
            getLocationInWindow(offsetInWindow);
            if (this.mPreviewPopup.isShowing()) {
                this.mPreviewPopup.update(this.mPopupPreviewX, this.mPopupPreviewY + offsetInWindow[1], popupWidth, popupHeight);
            } else {
                this.mPreviewPopup.setWidth(popupWidth);
                this.mPreviewPopup.setHeight(popupHeight);
                this.mPreviewPopup.showAtLocation(this, 0, this.mPopupPreviewX, this.mPopupPreviewY + offsetInWindow[1]);
            }
            this.mPreviewText.setVisibility(0);
        }
    }

    private void longPressFirstWord() {
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hidePreview();
    }
}
