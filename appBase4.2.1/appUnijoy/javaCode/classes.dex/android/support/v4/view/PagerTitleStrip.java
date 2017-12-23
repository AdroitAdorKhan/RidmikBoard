package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;

public class PagerTitleStrip extends ViewGroup implements Decor {
    private static final int[] ATTRS = new int[]{16842804, 16842904, 16842901};
    private static final int SIDE_ALPHA = 153;
    private static final String TAG = "PagerTitleStrip";
    private static final int TEXT_SPACING = 16;
    private TextView mCurrText;
    private int mLastKnownCurrentPage;
    private float mLastKnownPositionOffset;
    private TextView mNextText;
    private final PageListener mPageListener;
    ViewPager mPager;
    private TextView mPrevText;
    private int mScaledTextSpacing;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;

    private class PageListener extends DataSetObserver implements OnPageChangeListener, OnAdapterChangeListener {
        private int mScrollState;

        private PageListener() {
        }

        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (positionOffset > 0.5f) {
                position++;
            }
            PagerTitleStrip.this.updateTextPositions(position, positionOffset);
        }

        public void onPageSelected(int position) {
            if (this.mScrollState == 0) {
                PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
            }
        }

        public void onPageScrollStateChanged(int state) {
            this.mScrollState = state;
        }

        public void onAdapterChanged(PagerAdapter oldAdapter, PagerAdapter newAdapter) {
            PagerTitleStrip.this.updateAdapter(oldAdapter, newAdapter);
        }

        public void onChanged() {
            PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mLastKnownCurrentPage = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.mPageListener = new PageListener();
        View textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        textView = new TextView(context);
        this.mCurrText = textView;
        addView(textView);
        textView = new TextView(context);
        this.mNextText = textView;
        addView(textView);
        TypedArray a = context.obtainStyledAttributes(attrs, ATTRS);
        int textAppearance = a.getResourceId(0, 0);
        if (textAppearance != 0) {
            this.mPrevText.setTextAppearance(context, textAppearance);
            this.mCurrText.setTextAppearance(context, textAppearance);
            this.mNextText.setTextAppearance(context, textAppearance);
        }
        if (a.hasValue(1)) {
            int textColor = a.getColor(1, 0);
            this.mPrevText.setTextColor(textColor);
            this.mCurrText.setTextColor(textColor);
            this.mNextText.setTextColor(textColor);
        }
        int textSize = a.getDimensionPixelSize(2, 0);
        if (textSize != 0) {
            this.mPrevText.setTextSize(0, (float) textSize);
            this.mCurrText.setTextSize(0, (float) textSize);
            this.mNextText.setTextSize(0, (float) textSize);
        }
        a.recycle();
        int transparentColor = -1728053248 | (16777215 & this.mPrevText.getTextColors().getDefaultColor());
        this.mPrevText.setTextColor(transparentColor);
        this.mNextText.setTextColor(transparentColor);
        this.mPrevText.setEllipsize(TruncateAt.END);
        this.mCurrText.setEllipsize(TruncateAt.END);
        this.mNextText.setEllipsize(TruncateAt.END);
        this.mPrevText.setSingleLine();
        this.mCurrText.setSingleLine();
        this.mNextText.setSingleLine();
        this.mScaledTextSpacing = (int) (16.0f * context.getResources().getDisplayMetrics().density);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager pager = (ViewPager) parent;
            PagerAdapter adapter = pager.getAdapter();
            pager.setInternalPageChangeListener(this.mPageListener);
            pager.setOnAdapterChangeListener(this.mPageListener);
            this.mPager = pager;
            updateAdapter(null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    protected void onDetachedFromWindow() {
        updateAdapter(this.mPager.getAdapter(), null);
        this.mPager.setInternalPageChangeListener(null);
        this.mPager.setOnAdapterChangeListener(null);
        this.mPager = null;
    }

    void updateText(int currentItem, PagerAdapter adapter) {
        int itemCount;
        if (adapter != null) {
            itemCount = adapter.getCount();
        } else {
            itemCount = 0;
        }
        this.mUpdatingText = true;
        CharSequence text = null;
        if (currentItem >= 1 && adapter != null) {
            text = adapter.getPageTitle(currentItem - 1);
        }
        this.mPrevText.setText(text);
        this.mCurrText.setText(adapter != null ? adapter.getPageTitle(currentItem) : null);
        text = null;
        if (currentItem + 1 < itemCount && adapter != null) {
            text = adapter.getPageTitle(currentItem + 1);
        }
        this.mNextText.setText(text);
        int childHeight = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int childWidthSpec = MeasureSpec.makeMeasureSpec((int) (((float) ((getWidth() - getPaddingLeft()) - getPaddingRight())) * 0.8f), Integer.MIN_VALUE);
        int childHeightSpec = MeasureSpec.makeMeasureSpec(childHeight, 1073741824);
        this.mPrevText.measure(childWidthSpec, childHeightSpec);
        this.mCurrText.measure(childWidthSpec, childHeightSpec);
        this.mNextText.measure(childWidthSpec, childHeightSpec);
        this.mLastKnownCurrentPage = currentItem;
        if (!this.mUpdatingPositions) {
            updateTextPositions(currentItem, this.mLastKnownPositionOffset);
        }
        this.mUpdatingText = false;
    }

    public void requestLayout() {
        if (!this.mUpdatingText) {
            super.requestLayout();
        }
    }

    void updateAdapter(PagerAdapter oldAdapter, PagerAdapter newAdapter) {
        if (oldAdapter != null) {
            oldAdapter.unregisterDataSetObserver(this.mPageListener);
        }
        if (newAdapter != null) {
            newAdapter.registerDataSetObserver(this.mPageListener);
        }
        if (this.mPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(this.mPager.getCurrentItem(), newAdapter);
            requestLayout();
        }
    }

    void updateTextPositions(int position, float positionOffset) {
        if (position != this.mLastKnownCurrentPage) {
            updateText(position, this.mPager.getAdapter());
        } else if (positionOffset == this.mLastKnownPositionOffset) {
            return;
        }
        this.mUpdatingPositions = true;
        int prevWidth = this.mPrevText.getMeasuredWidth();
        int currWidth = this.mCurrText.getMeasuredWidth();
        int nextWidth = this.mNextText.getMeasuredWidth();
        int halfCurrWidth = currWidth / 2;
        int stripWidth = getWidth();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int textPaddedRight = paddingRight + halfCurrWidth;
        int contentWidth = (stripWidth - (paddingLeft + halfCurrWidth)) - textPaddedRight;
        float currOffset = positionOffset + 0.5f;
        if (currOffset > 1.0f) {
            currOffset -= 1.0f;
        }
        int currLeft = ((stripWidth - textPaddedRight) - ((int) (((float) contentWidth) * currOffset))) - (currWidth / 2);
        int currRight = currLeft + currWidth;
        this.mCurrText.layout(currLeft, paddingTop, currRight, this.mCurrText.getMeasuredHeight() + paddingTop);
        int prevLeft = Math.min(paddingLeft, (currLeft - this.mScaledTextSpacing) - prevWidth);
        this.mPrevText.layout(prevLeft, paddingTop, prevLeft + prevWidth, this.mPrevText.getMeasuredHeight() + paddingTop);
        int nextLeft = Math.max((stripWidth - paddingRight) - nextWidth, this.mScaledTextSpacing + currRight);
        this.mNextText.layout(nextLeft, paddingTop, nextLeft + nextWidth, this.mNextText.getMeasuredHeight() + paddingTop);
        this.mLastKnownPositionOffset = positionOffset;
        this.mUpdatingPositions = false;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int widthMode = MeasureSpec.getMode(widthMeasureSpec);
        int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        int widthSize = MeasureSpec.getSize(widthMeasureSpec);
        int heightSize = MeasureSpec.getSize(heightMeasureSpec);
        if (widthMode != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int childHeight = heightSize;
        int minHeight = 0;
        Drawable bg = getBackground();
        if (bg != null) {
            minHeight = bg.getIntrinsicHeight();
        }
        int padding = getPaddingTop() + getPaddingBottom();
        childHeight -= padding;
        int childWidthSpec = MeasureSpec.makeMeasureSpec((int) (((float) widthSize) * 0.8f), Integer.MIN_VALUE);
        int childHeightSpec = MeasureSpec.makeMeasureSpec(childHeight, heightMode);
        this.mPrevText.measure(childWidthSpec, childHeightSpec);
        this.mCurrText.measure(childWidthSpec, childHeightSpec);
        this.mNextText.measure(childWidthSpec, childHeightSpec);
        if (heightMode == 1073741824) {
            setMeasuredDimension(widthSize, heightSize);
        } else {
            setMeasuredDimension(widthSize, Math.max(minHeight, this.mCurrText.getMeasuredHeight() + padding));
        }
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        if (this.mPager != null) {
            updateTextPositions(this.mPager.getCurrentItem(), 0.0f);
        }
    }
}
