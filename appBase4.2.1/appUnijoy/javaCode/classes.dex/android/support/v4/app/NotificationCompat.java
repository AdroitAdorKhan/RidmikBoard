package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;

public class NotificationCompat {
    public static final int FLAG_HIGH_PRIORITY = 128;
    private static final NotificationCompatImpl IMPL;

    public static class Builder {
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        Context mContext;
        PendingIntent mFullScreenIntent;
        Bitmap mLargeIcon;
        Notification mNotification = new Notification();
        int mNumber;
        RemoteViews mTickerView;

        public Builder(Context context) {
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
        }

        public Builder setWhen(long when) {
            this.mNotification.when = when;
            return this;
        }

        public Builder setSmallIcon(int icon) {
            this.mNotification.icon = icon;
            return this;
        }

        public Builder setSmallIcon(int icon, int level) {
            this.mNotification.icon = icon;
            this.mNotification.iconLevel = level;
            return this;
        }

        public Builder setContentTitle(CharSequence title) {
            this.mContentTitle = title;
            return this;
        }

        public Builder setContentText(CharSequence text) {
            this.mContentText = text;
            return this;
        }

        public Builder setNumber(int number) {
            this.mNumber = number;
            return this;
        }

        public Builder setContentInfo(CharSequence info) {
            this.mContentInfo = info;
            return this;
        }

        public Builder setContent(RemoteViews views) {
            this.mNotification.contentView = views;
            return this;
        }

        public Builder setContentIntent(PendingIntent intent) {
            this.mContentIntent = intent;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent intent) {
            this.mNotification.deleteIntent = intent;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent intent, boolean highPriority) {
            this.mFullScreenIntent = intent;
            setFlag(128, highPriority);
            return this;
        }

        public Builder setTicker(CharSequence tickerText) {
            this.mNotification.tickerText = tickerText;
            return this;
        }

        public Builder setTicker(CharSequence tickerText, RemoteViews views) {
            this.mNotification.tickerText = tickerText;
            this.mTickerView = views;
            return this;
        }

        public Builder setLargeIcon(Bitmap icon) {
            this.mLargeIcon = icon;
            return this;
        }

        public Builder setSound(Uri sound) {
            this.mNotification.sound = sound;
            this.mNotification.audioStreamType = -1;
            return this;
        }

        public Builder setSound(Uri sound, int streamType) {
            this.mNotification.sound = sound;
            this.mNotification.audioStreamType = streamType;
            return this;
        }

        public Builder setVibrate(long[] pattern) {
            this.mNotification.vibrate = pattern;
            return this;
        }

        public Builder setLights(int argb, int onMs, int offMs) {
            boolean showLights;
            int i = 1;
            this.mNotification.ledARGB = argb;
            this.mNotification.ledOnMS = onMs;
            this.mNotification.ledOffMS = offMs;
            if (this.mNotification.ledOnMS == 0 || this.mNotification.ledOffMS == 0) {
                showLights = false;
            } else {
                showLights = true;
            }
            Notification notification = this.mNotification;
            int i2 = this.mNotification.flags & -2;
            if (!showLights) {
                i = 0;
            }
            notification.flags = i | i2;
            return this;
        }

        public Builder setOngoing(boolean ongoing) {
            setFlag(2, ongoing);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean onlyAlertOnce) {
            setFlag(8, onlyAlertOnce);
            return this;
        }

        public Builder setAutoCancel(boolean autoCancel) {
            setFlag(16, autoCancel);
            return this;
        }

        public Builder setDefaults(int defaults) {
            this.mNotification.defaults = defaults;
            if ((defaults & 4) != 0) {
                Notification notification = this.mNotification;
                notification.flags |= 1;
            }
            return this;
        }

        private void setFlag(int mask, boolean value) {
            if (value) {
                Notification notification = this.mNotification;
                notification.flags |= mask;
                return;
            }
            notification = this.mNotification;
            notification.flags &= mask ^ -1;
        }

        public Notification getNotification() {
            return NotificationCompat.IMPL.getNotification(this);
        }
    }

    interface NotificationCompatImpl {
        Notification getNotification(Builder builder);
    }

    static class NotificationCompatImplBase implements NotificationCompatImpl {
        NotificationCompatImplBase() {
        }

        public Notification getNotification(Builder b) {
            Notification result = b.mNotification;
            result.setLatestEventInfo(b.mContext, b.mContentTitle, b.mContentText, b.mContentIntent);
            return result;
        }
    }

    static class NotificationCompatImplHoneycomb implements NotificationCompatImpl {
        NotificationCompatImplHoneycomb() {
        }

        public Notification getNotification(Builder b) {
            return NotificationCompatHoneycomb.add(b.mContext, b.mNotification, b.mContentTitle, b.mContentText, b.mContentInfo, b.mTickerView, b.mNumber, b.mContentIntent, b.mFullScreenIntent, b.mLargeIcon);
        }
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            IMPL = new NotificationCompatImplHoneycomb();
        } else {
            IMPL = new NotificationCompatImplBase();
        }
    }
}
