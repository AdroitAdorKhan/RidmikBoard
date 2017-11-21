package net.hasnath.android.ridmik.voice;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.List;
import ridmik.keyboard.R;

public class RecognitionView {
    private static final String TAG = "RecognitionView";
    private View mButton;
    private TextView mButtonText;
    private Context mContext;
    private Drawable mError;
    private ImageView mImage;
    private Drawable mInitializing;
    private int mLevel = 0;
    private float mMaxMicrophoneLevel;
    private float mMinMicrophoneLevel;
    private View mProgress;
    private List<Drawable> mSpeakNow;
    private State mState = State.READY;
    private TextView mText;
    private Handler mUiHandler = new Handler();
    private Runnable mUpdateVolumeRunnable = new Runnable() {
        public void run() {
            if (RecognitionView.this.mState == State.LISTENING) {
                float min = RecognitionView.this.mMinMicrophoneLevel;
                int maxLevel = RecognitionView.this.mSpeakNow.size() - 1;
                int level = Math.min(Math.max(0, (int) (((RecognitionView.this.mVolume - min) / (RecognitionView.this.mMaxMicrophoneLevel - min)) * ((float) maxLevel))), maxLevel);
                if (level != RecognitionView.this.mLevel) {
                    RecognitionView.this.mImage.setImageDrawable((Drawable) RecognitionView.this.mSpeakNow.get(level));
                    RecognitionView.this.mLevel = level;
                }
                RecognitionView.this.mUiHandler.postDelayed(RecognitionView.this.mUpdateVolumeRunnable, 50);
            }
        }
    };
    private View mView;
    private float mVolume = 0.0f;

    private enum State {
        LISTENING,
        WORKING,
        READY
    }

    public RecognitionView(Context context, OnClickListener clickListener) {
        this.mView = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.recognition_status, null);
        ContentResolver cr = context.getContentResolver();
        this.mMinMicrophoneLevel = SettingsUtil.getSettingsFloat(cr, SettingsUtil.LATIN_IME_MIN_MICROPHONE_LEVEL, 15.0f);
        this.mMaxMicrophoneLevel = SettingsUtil.getSettingsFloat(cr, SettingsUtil.LATIN_IME_MAX_MICROPHONE_LEVEL, 30.0f);
        Resources r = context.getResources();
        this.mSpeakNow = new ArrayList();
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level0));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level1));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level2));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level3));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level4));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level5));
        this.mSpeakNow.add(r.getDrawable(R.drawable.speak_now_level6));
        this.mInitializing = r.getDrawable(R.drawable.mic_slash);
        this.mError = r.getDrawable(R.drawable.caution);
        this.mImage = (ImageView) this.mView.findViewById(R.id.image);
        this.mButton = this.mView.findViewById(R.id.button);
        this.mButton.setOnClickListener(clickListener);
        this.mText = (TextView) this.mView.findViewById(R.id.text);
        this.mButtonText = (TextView) this.mView.findViewById(R.id.button_text);
        this.mProgress = this.mView.findViewById(R.id.progress);
        this.mContext = context;
    }

    public View getView() {
        return this.mView;
    }

    public void restoreState() {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                if (RecognitionView.this.mState == State.WORKING) {
                    ((ProgressBar) RecognitionView.this.mProgress).setIndeterminate(false);
                    ((ProgressBar) RecognitionView.this.mProgress).setIndeterminate(true);
                }
            }
        });
    }

    public void showInitializing() {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                RecognitionView.this.prepareDialog(false, RecognitionView.this.mContext.getText(R.string.voice_initializing), RecognitionView.this.mInitializing, RecognitionView.this.mContext.getText(R.string.cancel));
            }
        });
    }

    public void showListening() {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                RecognitionView.this.mState = State.LISTENING;
                RecognitionView.this.prepareDialog(false, RecognitionView.this.mContext.getText(R.string.voice_listening), (Drawable) RecognitionView.this.mSpeakNow.get(0), RecognitionView.this.mContext.getText(R.string.cancel));
            }
        });
        this.mUiHandler.postDelayed(this.mUpdateVolumeRunnable, 50);
    }

    public void updateVoiceMeter(float rmsdB) {
        this.mVolume = rmsdB;
    }

    public void showError(final String message) {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                RecognitionView.this.mState = State.READY;
                RecognitionView.this.prepareDialog(false, message, RecognitionView.this.mError, RecognitionView.this.mContext.getText(R.string.ok));
            }
        });
    }

    public void showWorking(final ByteArrayOutputStream waveBuffer, final int speechStartPosition, final int speechEndPosition) {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                RecognitionView.this.mState = State.WORKING;
                RecognitionView.this.prepareDialog(true, RecognitionView.this.mContext.getText(R.string.voice_working), null, RecognitionView.this.mContext.getText(R.string.cancel));
                ShortBuffer buf = ByteBuffer.wrap(waveBuffer.toByteArray()).order(ByteOrder.nativeOrder()).asShortBuffer();
                buf.position(0);
                waveBuffer.reset();
                RecognitionView.this.showWave(buf, speechStartPosition / 2, speechEndPosition / 2);
            }
        });
    }

    private void prepareDialog(boolean spinVisible, CharSequence text, Drawable image, CharSequence btnTxt) {
        if (spinVisible) {
            this.mProgress.setVisibility(0);
            this.mImage.setVisibility(8);
        } else {
            this.mProgress.setVisibility(8);
            this.mImage.setImageDrawable(image);
            this.mImage.setVisibility(0);
        }
        this.mText.setText(text);
        this.mButtonText.setText(btnTxt);
    }

    private static int getAverageAbs(ShortBuffer buffer, int start, int i, int npw) {
        int from = start + (i * npw);
        int total = 0;
        for (int x = from; x < from + npw; x++) {
            total += Math.abs(buffer.get(x));
        }
        return total / npw;
    }

    private void showWave(ShortBuffer waveBuffer, int startPosition, int endPosition) {
        int w = ((View) this.mImage.getParent()).getWidth();
        int h = this.mImage.getHeight();
        if (w > 0 && h > 0) {
            int endIndex;
            Bitmap b = Bitmap.createBitmap(w, h, Config.ARGB_8888);
            Canvas c = new Canvas(b);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAntiAlias(true);
            paint.setStyle(Style.STROKE);
            paint.setAlpha(144);
            paint.setPathEffect(new CornerPathEffect(3.0f));
            int numSamples = waveBuffer.remaining();
            if (endPosition == 0) {
                endIndex = numSamples;
            } else {
                endIndex = Math.min(endPosition, numSamples);
            }
            int startIndex = startPosition - 2000;
            if (startIndex < 0) {
                startIndex = 0;
            }
            int count = (endIndex - startIndex) / 200;
            float deltaX = (1.0f * ((float) w)) / ((float) count);
            int yMax = (h / 2) - 8;
            Path path = new Path();
            c.translate(0.0f, (float) yMax);
            float x = 0.0f;
            path.moveTo(0.0f, 0.0f);
            for (int i = 0; i < count; i++) {
                float y = Math.min((float) yMax, ((float) (getAverageAbs(waveBuffer, startIndex, i, 200) * h)) * 1.5258789E-4f) * ((float) ((i & 1) == 0 ? -1 : 1));
                path.lineTo(x, y);
                x += deltaX;
                path.lineTo(x, y);
            }
            if (deltaX > 4.0f) {
                paint.setStrokeWidth(3.0f);
            } else {
                paint.setStrokeWidth((float) Math.max(1, (int) (((double) deltaX) - 0.05d)));
            }
            c.drawPath(path, paint);
            this.mImage.setImageBitmap(b);
            this.mImage.setVisibility(0);
            MarginLayoutParams mProgressParams = (MarginLayoutParams) this.mProgress.getLayoutParams();
            mProgressParams.topMargin = (int) TypedValue.applyDimension(0, (float) (-h), this.mContext.getResources().getDisplayMetrics());
            ((View) this.mImage.getParent()).setPadding(4, ((View) this.mImage.getParent()).getPaddingTop(), 3, ((View) this.mImage.getParent()).getPaddingBottom());
            this.mProgress.setLayoutParams(mProgressParams);
        }
    }

    public void finish() {
        this.mUiHandler.post(new Runnable() {
            public void run() {
                RecognitionView.this.mState = State.READY;
                RecognitionView.this.exitWorking();
            }
        });
    }

    private void exitWorking() {
        this.mProgress.setVisibility(8);
        this.mImage.setVisibility(0);
    }
}
