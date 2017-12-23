package net.hasnath.android.ridmik.voice;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public class WaveformImage {
    private static final int SAMPLING_RATE = 8000;

    private WaveformImage() {
    }

    public static Bitmap drawWaveform(ByteArrayOutputStream waveBuffer, int w, int h, int start, int end) {
        Bitmap b = Bitmap.createBitmap(w, h, Config.ARGB_8888);
        Canvas c = new Canvas(b);
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(0.0f);
        ShortBuffer buf = ByteBuffer.wrap(waveBuffer.toByteArray()).order(ByteOrder.nativeOrder()).asShortBuffer();
        buf.position(0);
        int numSamples = waveBuffer.size() / 2;
        int endIndex = (end / 2) + 800;
        if (end == 0 || endIndex >= numSamples) {
            endIndex = numSamples;
        }
        int index = (start / 2) - 800;
        if (index < 0) {
            index = 0;
        }
        int size = endIndex - index;
        int numSamplePerPixel = 32;
        int delta = size / (32 * w);
        if (delta == 0) {
            numSamplePerPixel = size / w;
            delta = 1;
        }
        for (int i = 0; i < w - 1; i++) {
            float x = (float) i;
            int j = 0;
            while (j < numSamplePerPixel) {
                try {
                    c.drawPoint(x, ((float) (h / 2)) - (((float) (buf.get(index) * h)) * 5.340576E-5f), paint);
                    index += delta;
                    j++;
                } catch (IndexOutOfBoundsException e) {
                }
            }
        }
        return b;
    }
}
