package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: FragmentManager */
final class FragmentManagerImpl extends FragmentManager {
    static final Interpolator ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    static final Interpolator ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = HONEYCOMB;
    static final Interpolator DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
    static final Interpolator DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    ArrayList<Fragment> mActive;
    FragmentActivity mActivity;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit = new Runnable() {
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    FragmentManagerImpl() {
    }

    static {
        boolean z = HONEYCOMB;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        HONEYCOMB = z;
    }

    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    public void popBackStack() {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, -1, 0);
            }
        }, HONEYCOMB);
    }

    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, null, -1, 0);
    }

    public void popBackStack(final String name, final int flags) {
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, name, -1, flags);
            }
        }, HONEYCOMB);
    }

    public boolean popBackStackImmediate(String name, int flags) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mActivity.mHandler, name, -1, flags);
    }

    public void popBackStack(final int id, final int flags) {
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        enqueueAction(new Runnable() {
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, id, flags);
            }
        }, HONEYCOMB);
    }

    public boolean popBackStackImmediate(int id, int flags) {
        checkStateLoss();
        executePendingTransactions();
        if (id >= 0) {
            return popBackStackState(this.mActivity.mHandler, null, id, flags);
        }
        throw new IllegalArgumentException("Bad id: " + id);
    }

    public int getBackStackEntryCount() {
        return this.mBackStack != null ? this.mBackStack.size() : 0;
    }

    public BackStackEntry getBackStackEntryAt(int index) {
        return (BackStackEntry) this.mBackStack.get(index);
    }

    public void addOnBackStackChangedListener(OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(listener);
    }

    public void removeOnBackStackChangedListener(OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(listener);
        }
    }

    public void putFragment(Bundle bundle, String key, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throw new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager");
        }
        bundle.putInt(key, fragment.mIndex);
    }

    public Fragment getFragment(Bundle bundle, String key) {
        int index = bundle.getInt(key, -1);
        if (index == -1) {
            return null;
        }
        if (index >= this.mActive.size()) {
            throw new IllegalStateException("Fragement no longer exists for key " + key + ": index " + index);
        }
        Fragment f = (Fragment) this.mActive.get(index);
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("Fragement no longer exists for key " + key + ": index " + index);
    }

    public SavedState saveFragmentInstanceState(Fragment fragment) {
        if (fragment.mIndex < 0) {
            throw new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager");
        } else if (fragment.mState <= 0) {
            return null;
        } else {
            Bundle result = saveFragmentBasicState(fragment);
            if (result != null) {
                return new SavedState(result);
            }
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mActivity, sb);
        sb.append("}}");
        return sb.toString();
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        int N;
        int i;
        String innerPrefix = prefix + "    ";
        if (this.mActive != null) {
            N = this.mActive.size();
            if (N > 0) {
                writer.print(prefix);
                writer.print("Active Fragments in ");
                writer.print(Integer.toHexString(System.identityHashCode(this)));
                writer.println(AlternatesBundleKeys.SPAN_KEY_DELIMITER);
                for (i = 0; i < N; i++) {
                    Fragment f;
                    f = (Fragment) this.mActive.get(i);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i);
                    writer.print(": ");
                    writer.println(f);
                    if (f != null) {
                        f.dump(innerPrefix, fd, writer, args);
                    }
                }
            }
        }
        if (this.mAdded != null) {
            N = this.mAdded.size();
            if (N > 0) {
                writer.print(prefix);
                writer.println("Added Fragments:");
                for (i = 0; i < N; i++) {
                    f = (Fragment) this.mAdded.get(i);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i);
                    writer.print(": ");
                    writer.println(f.toString());
                }
            }
        }
        if (this.mCreatedMenus != null) {
            N = this.mCreatedMenus.size();
            if (N > 0) {
                writer.print(prefix);
                writer.println("Fragments Created Menus:");
                for (i = 0; i < N; i++) {
                    f = (Fragment) this.mCreatedMenus.get(i);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i);
                    writer.print(": ");
                    writer.println(f.toString());
                }
            }
        }
        if (this.mBackStack != null) {
            N = this.mBackStack.size();
            if (N > 0) {
                writer.print(prefix);
                writer.println("Back Stack:");
                for (i = 0; i < N; i++) {
                    BackStackRecord bs = (BackStackRecord) this.mBackStack.get(i);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i);
                    writer.print(": ");
                    writer.println(bs.toString());
                    bs.dump(innerPrefix, fd, writer, args);
                }
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null) {
                N = this.mBackStackIndices.size();
                if (N > 0) {
                    writer.print(prefix);
                    writer.println("Back Stack Indices:");
                    for (i = 0; i < N; i++) {
                        bs = (BackStackRecord) this.mBackStackIndices.get(i);
                        writer.print(prefix);
                        writer.print("  #");
                        writer.print(i);
                        writer.print(": ");
                        writer.println(bs);
                    }
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                writer.print(prefix);
                writer.print("mAvailBackStackIndices: ");
                writer.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null) {
            N = this.mPendingActions.size();
            if (N > 0) {
                writer.print(prefix);
                writer.println("Pending Actions:");
                for (i = 0; i < N; i++) {
                    Runnable r = (Runnable) this.mPendingActions.get(i);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i);
                    writer.print(": ");
                    writer.println(r);
                }
            }
        }
        writer.print(prefix);
        writer.println("FragmentManager misc state:");
        writer.print(prefix);
        writer.print("  mCurState=");
        writer.print(this.mCurState);
        writer.print(" mStateSaved=");
        writer.print(this.mStateSaved);
        writer.print(" mDestroyed=");
        writer.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            writer.print(prefix);
            writer.print("  mNeedMenuInvalidate=");
            writer.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            writer.print(prefix);
            writer.print("  mNoTransactionsBecause=");
            writer.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            writer.print(prefix);
            writer.print("  mAvailIndices: ");
            writer.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float startScale, float endScale, float startAlpha, float endAlpha) {
        AnimationSet set = new AnimationSet(HONEYCOMB);
        ScaleAnimation scale = new ScaleAnimation(startScale, endScale, startScale, endScale, 1, 0.5f, 1, 0.5f);
        scale.setInterpolator(DECELERATE_QUINT);
        scale.setDuration(220);
        set.addAnimation(scale);
        AlphaAnimation alpha = new AlphaAnimation(startAlpha, endAlpha);
        alpha.setInterpolator(DECELERATE_CUBIC);
        alpha.setDuration(220);
        set.addAnimation(alpha);
        return set;
    }

    static Animation makeFadeAnimation(Context context, float start, float end) {
        AlphaAnimation anim = new AlphaAnimation(start, end);
        anim.setInterpolator(DECELERATE_CUBIC);
        anim.setDuration(220);
        return anim;
    }

    Animation loadAnimation(Fragment fragment, int transit, boolean enter, int transitionStyle) {
        Animation animObj = fragment.onCreateAnimation(transit, enter, fragment.mNextAnim);
        if (animObj != null) {
            return animObj;
        }
        if (fragment.mNextAnim != 0) {
            Animation anim = AnimationUtils.loadAnimation(this.mActivity, fragment.mNextAnim);
            if (anim != null) {
                return anim;
            }
        }
        if (transit == 0) {
            return null;
        }
        int styleIndex = transitToStyleIndex(transit, enter);
        if (styleIndex < 0) {
            return null;
        }
        switch (styleIndex) {
            case 1:
                return makeOpenCloseAnimation(this.mActivity, 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return makeOpenCloseAnimation(this.mActivity, 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return makeOpenCloseAnimation(this.mActivity, 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return makeFadeAnimation(this.mActivity, 0.0f, 1.0f);
            case 6:
                return makeFadeAnimation(this.mActivity, 1.0f, 0.0f);
            default:
                if (transitionStyle == 0 && this.mActivity.getWindow() != null) {
                    transitionStyle = this.mActivity.getWindow().getAttributes().windowAnimations;
                }
                if (transitionStyle == 0) {
                    return null;
                }
                return null;
        }
    }

    public void performPendingDeferredStart(Fragment f) {
        if (!f.mDeferStart) {
            return;
        }
        if (this.mExecutingActions) {
            this.mHavePendingDeferredStart = true;
            return;
        }
        f.mDeferStart = HONEYCOMB;
        moveToState(f, this.mCurState, 0, 0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void moveToState(android.support.v4.app.Fragment r8, int r9, int r10, int r11) {
        /*
        r7 = this;
        r4 = r8.mAdded;
        if (r4 != 0) goto L_0x0008;
    L_0x0004:
        r4 = 1;
        if (r9 <= r4) goto L_0x0008;
    L_0x0007:
        r9 = 1;
    L_0x0008:
        r4 = r8.mRemoving;
        if (r4 == 0) goto L_0x0012;
    L_0x000c:
        r4 = r8.mState;
        if (r9 <= r4) goto L_0x0012;
    L_0x0010:
        r9 = r8.mState;
    L_0x0012:
        r4 = r8.mDeferStart;
        if (r4 == 0) goto L_0x001f;
    L_0x0016:
        r4 = r8.mState;
        r5 = 4;
        if (r4 >= r5) goto L_0x001f;
    L_0x001b:
        r4 = 3;
        if (r9 <= r4) goto L_0x001f;
    L_0x001e:
        r9 = 3;
    L_0x001f:
        r4 = r8.mState;
        if (r4 >= r9) goto L_0x02ba;
    L_0x0023:
        r4 = r8.mFromLayout;
        if (r4 == 0) goto L_0x002c;
    L_0x0027:
        r4 = r8.mInLayout;
        if (r4 != 0) goto L_0x002c;
    L_0x002b:
        return;
    L_0x002c:
        r4 = r8.mAnimatingAway;
        if (r4 == 0) goto L_0x003a;
    L_0x0030:
        r4 = 0;
        r8.mAnimatingAway = r4;
        r4 = r8.mStateAfterAnimating;
        r5 = 0;
        r6 = 0;
        r7.moveToState(r8, r4, r5, r6);
    L_0x003a:
        r4 = r8.mState;
        switch(r4) {
            case 0: goto L_0x0042;
            case 1: goto L_0x013c;
            case 2: goto L_0x021f;
            case 3: goto L_0x021f;
            case 4: goto L_0x0267;
            default: goto L_0x003f;
        };
    L_0x003f:
        r8.mState = r9;
        goto L_0x002b;
    L_0x0042:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x005e;
    L_0x0046:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "moveto CREATED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x005e:
        r4 = r8.mSavedFragmentState;
        if (r4 == 0) goto L_0x009b;
    L_0x0062:
        r4 = r8.mSavedFragmentState;
        r5 = "android:view_state";
        r4 = r4.getSparseParcelableArray(r5);
        r8.mSavedViewState = r4;
        r4 = r8.mSavedFragmentState;
        r5 = "android:target_state";
        r4 = r7.getFragment(r4, r5);
        r8.mTarget = r4;
        r4 = r8.mTarget;
        if (r4 == 0) goto L_0x0085;
    L_0x007a:
        r4 = r8.mSavedFragmentState;
        r5 = "android:target_req_state";
        r6 = 0;
        r4 = r4.getInt(r5, r6);
        r8.mTargetRequestCode = r4;
    L_0x0085:
        r4 = r8.mSavedFragmentState;
        r5 = "android:user_visible_hint";
        r6 = 1;
        r4 = r4.getBoolean(r5, r6);
        r8.mUserVisibleHint = r4;
        r4 = r8.mUserVisibleHint;
        if (r4 != 0) goto L_0x009b;
    L_0x0094:
        r4 = 1;
        r8.mDeferStart = r4;
        r4 = 3;
        if (r9 <= r4) goto L_0x009b;
    L_0x009a:
        r9 = 3;
    L_0x009b:
        r4 = r7.mActivity;
        r8.mActivity = r4;
        r4 = r7.mActivity;
        r4 = r4.mFragments;
        r8.mFragmentManager = r4;
        r4 = 0;
        r8.mCalled = r4;
        r4 = r7.mActivity;
        r8.onAttach(r4);
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x00d0;
    L_0x00b1:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onAttach()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x00d0:
        r4 = r7.mActivity;
        r4.onAttachFragment(r8);
        r4 = r8.mRetaining;
        if (r4 != 0) goto L_0x0104;
    L_0x00d9:
        r4 = 0;
        r8.mCalled = r4;
        r4 = r8.mSavedFragmentState;
        r8.onCreate(r4);
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0104;
    L_0x00e5:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onCreate()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0104:
        r4 = 0;
        r8.mRetaining = r4;
        r4 = r8.mFromLayout;
        if (r4 == 0) goto L_0x013c;
    L_0x010b:
        r4 = r8.mSavedFragmentState;
        r4 = r8.getLayoutInflater(r4);
        r5 = 0;
        r6 = r8.mSavedFragmentState;
        r4 = r8.onCreateView(r4, r5, r6);
        r8.mView = r4;
        r4 = r8.mView;
        if (r4 == 0) goto L_0x019d;
    L_0x011e:
        r4 = r8.mView;
        r8.mInnerView = r4;
        r4 = r8.mView;
        r4 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r4);
        r8.mView = r4;
        r4 = r8.mHidden;
        if (r4 == 0) goto L_0x0135;
    L_0x012e:
        r4 = r8.mView;
        r5 = 8;
        r4.setVisibility(r5);
    L_0x0135:
        r4 = r8.mView;
        r5 = r8.mSavedFragmentState;
        r8.onViewCreated(r4, r5);
    L_0x013c:
        r4 = 1;
        if (r9 <= r4) goto L_0x021f;
    L_0x013f:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x015b;
    L_0x0143:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "moveto ACTIVITY_CREATED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x015b:
        r4 = r8.mFromLayout;
        if (r4 != 0) goto L_0x01e6;
    L_0x015f:
        r1 = 0;
        r4 = r8.mContainerId;
        if (r4 == 0) goto L_0x01a1;
    L_0x0164:
        r4 = r7.mActivity;
        r5 = r8.mContainerId;
        r1 = r4.findViewById(r5);
        r1 = (android.view.ViewGroup) r1;
        if (r1 != 0) goto L_0x01a1;
    L_0x0170:
        r4 = r8.mRestored;
        if (r4 != 0) goto L_0x01a1;
    L_0x0174:
        r4 = new java.lang.IllegalArgumentException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "No view found for id 0x";
        r5 = r5.append(r6);
        r6 = r8.mContainerId;
        r6 = java.lang.Integer.toHexString(r6);
        r5 = r5.append(r6);
        r6 = " for fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x019d:
        r4 = 0;
        r8.mInnerView = r4;
        goto L_0x013c;
    L_0x01a1:
        r8.mContainer = r1;
        r4 = r8.mSavedFragmentState;
        r4 = r8.getLayoutInflater(r4);
        r5 = r8.mSavedFragmentState;
        r4 = r8.onCreateView(r4, r1, r5);
        r8.mView = r4;
        r4 = r8.mView;
        if (r4 == 0) goto L_0x0211;
    L_0x01b5:
        r4 = r8.mView;
        r8.mInnerView = r4;
        r4 = r8.mView;
        r4 = android.support.v4.app.NoSaveStateFrameLayout.wrap(r4);
        r8.mView = r4;
        if (r1 == 0) goto L_0x01d4;
    L_0x01c3:
        r4 = 1;
        r0 = r7.loadAnimation(r8, r10, r4, r11);
        if (r0 == 0) goto L_0x01cf;
    L_0x01ca:
        r4 = r8.mView;
        r4.startAnimation(r0);
    L_0x01cf:
        r4 = r8.mView;
        r1.addView(r4);
    L_0x01d4:
        r4 = r8.mHidden;
        if (r4 == 0) goto L_0x01df;
    L_0x01d8:
        r4 = r8.mView;
        r5 = 8;
        r4.setVisibility(r5);
    L_0x01df:
        r4 = r8.mView;
        r5 = r8.mSavedFragmentState;
        r8.onViewCreated(r4, r5);
    L_0x01e6:
        r4 = 0;
        r8.mCalled = r4;
        r4 = r8.mSavedFragmentState;
        r8.onActivityCreated(r4);
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0215;
    L_0x01f2:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onActivityCreated()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0211:
        r4 = 0;
        r8.mInnerView = r4;
        goto L_0x01e6;
    L_0x0215:
        r4 = r8.mView;
        if (r4 == 0) goto L_0x021c;
    L_0x0219:
        r8.restoreViewState();
    L_0x021c:
        r4 = 0;
        r8.mSavedFragmentState = r4;
    L_0x021f:
        r4 = 3;
        if (r9 <= r4) goto L_0x0267;
    L_0x0222:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x023e;
    L_0x0226:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "moveto STARTED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x023e:
        r4 = 0;
        r8.mCalled = r4;
        r8.performStart();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0267;
    L_0x0248:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onStart()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0267:
        r4 = 4;
        if (r9 <= r4) goto L_0x003f;
    L_0x026a:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x0286;
    L_0x026e:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "moveto RESUMED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x0286:
        r4 = 0;
        r8.mCalled = r4;
        r4 = 1;
        r8.mResumed = r4;
        r8.onResume();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x02b2;
    L_0x0293:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onResume()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x02b2:
        r4 = 0;
        r8.mSavedFragmentState = r4;
        r4 = 0;
        r8.mSavedViewState = r4;
        goto L_0x003f;
    L_0x02ba:
        r4 = r8.mState;
        if (r4 <= r9) goto L_0x003f;
    L_0x02be:
        r4 = r8.mState;
        switch(r4) {
            case 1: goto L_0x02c5;
            case 2: goto L_0x0396;
            case 3: goto L_0x0374;
            case 4: goto L_0x032c;
            case 5: goto L_0x02e1;
            default: goto L_0x02c3;
        };
    L_0x02c3:
        goto L_0x003f;
    L_0x02c5:
        r4 = 1;
        if (r9 >= r4) goto L_0x003f;
    L_0x02c8:
        r4 = r7.mDestroyed;
        if (r4 == 0) goto L_0x02d8;
    L_0x02cc:
        r4 = r8.mAnimatingAway;
        if (r4 == 0) goto L_0x02d8;
    L_0x02d0:
        r3 = r8.mAnimatingAway;
        r4 = 0;
        r8.mAnimatingAway = r4;
        r3.clearAnimation();
    L_0x02d8:
        r4 = r8.mAnimatingAway;
        if (r4 == 0) goto L_0x042f;
    L_0x02dc:
        r8.mStateAfterAnimating = r9;
        r9 = 1;
        goto L_0x003f;
    L_0x02e1:
        r4 = 5;
        if (r9 >= r4) goto L_0x032c;
    L_0x02e4:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x0300;
    L_0x02e8:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "movefrom RESUMED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x0300:
        r4 = 0;
        r8.mCalled = r4;
        r8.onPause();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0329;
    L_0x030a:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onPause()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0329:
        r4 = 0;
        r8.mResumed = r4;
    L_0x032c:
        r4 = 4;
        if (r9 >= r4) goto L_0x0374;
    L_0x032f:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x034b;
    L_0x0333:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "movefrom STARTED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x034b:
        r4 = 0;
        r8.mCalled = r4;
        r8.performStop();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0374;
    L_0x0355:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onStop()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0374:
        r4 = 3;
        if (r9 >= r4) goto L_0x0396;
    L_0x0377:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x0393;
    L_0x037b:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "movefrom STOPPED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x0393:
        r8.performReallyStop();
    L_0x0396:
        r4 = 2;
        if (r9 >= r4) goto L_0x02c5;
    L_0x0399:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x03b5;
    L_0x039d:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "movefrom ACTIVITY_CREATED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x03b5:
        r4 = r8.mView;
        if (r4 == 0) goto L_0x03c8;
    L_0x03b9:
        r4 = r7.mActivity;
        r4 = r4.isFinishing();
        if (r4 != 0) goto L_0x03c8;
    L_0x03c1:
        r4 = r8.mSavedViewState;
        if (r4 != 0) goto L_0x03c8;
    L_0x03c5:
        r7.saveFragmentViewState(r8);
    L_0x03c8:
        r4 = 0;
        r8.mCalled = r4;
        r8.performDestroyView();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x03f1;
    L_0x03d2:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onDestroyView()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x03f1:
        r4 = r8.mView;
        if (r4 == 0) goto L_0x0424;
    L_0x03f5:
        r4 = r8.mContainer;
        if (r4 == 0) goto L_0x0424;
    L_0x03f9:
        r0 = 0;
        r4 = r7.mCurState;
        if (r4 <= 0) goto L_0x0407;
    L_0x03fe:
        r4 = r7.mDestroyed;
        if (r4 != 0) goto L_0x0407;
    L_0x0402:
        r4 = 0;
        r0 = r7.loadAnimation(r8, r10, r4, r11);
    L_0x0407:
        if (r0 == 0) goto L_0x041d;
    L_0x0409:
        r2 = r8;
        r4 = r8.mView;
        r8.mAnimatingAway = r4;
        r8.mStateAfterAnimating = r9;
        r4 = new android.support.v4.app.FragmentManagerImpl$5;
        r4.<init>(r2);
        r0.setAnimationListener(r4);
        r4 = r8.mView;
        r4.startAnimation(r0);
    L_0x041d:
        r4 = r8.mContainer;
        r5 = r8.mView;
        r4.removeView(r5);
    L_0x0424:
        r4 = 0;
        r8.mContainer = r4;
        r4 = 0;
        r8.mView = r4;
        r4 = 0;
        r8.mInnerView = r4;
        goto L_0x02c5;
    L_0x042f:
        r4 = DEBUG;
        if (r4 == 0) goto L_0x044b;
    L_0x0433:
        r4 = "FragmentManager";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "movefrom CREATED: ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r5 = r5.toString();
        android.util.Log.v(r4, r5);
    L_0x044b:
        r4 = r8.mRetaining;
        if (r4 != 0) goto L_0x0478;
    L_0x044f:
        r4 = 0;
        r8.mCalled = r4;
        r8.onDestroy();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x0478;
    L_0x0459:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onDestroy()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x0478:
        r4 = 0;
        r8.mCalled = r4;
        r8.onDetach();
        r4 = r8.mCalled;
        if (r4 != 0) goto L_0x04a1;
    L_0x0482:
        r4 = new android.support.v4.app.SuperNotCalledException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Fragment ";
        r5 = r5.append(r6);
        r5 = r5.append(r8);
        r6 = " did not call through to super.onDetach()";
        r5 = r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x04a1:
        r4 = r8.mRetaining;
        if (r4 != 0) goto L_0x04aa;
    L_0x04a5:
        r7.makeInactive(r8);
        goto L_0x003f;
    L_0x04aa:
        r4 = 0;
        r8.mActivity = r4;
        r4 = 0;
        r8.mFragmentManager = r4;
        goto L_0x003f;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int):void");
    }

    void moveToState(Fragment f) {
        moveToState(f, this.mCurState, 0, 0);
    }

    void moveToState(int newState, boolean always) {
        moveToState(newState, 0, 0, always);
    }

    void moveToState(int newState, int transit, int transitStyle, boolean always) {
        if (this.mActivity == null && newState != 0) {
            throw new IllegalStateException("No activity");
        } else if (always || this.mCurState != newState) {
            this.mCurState = newState;
            if (this.mActive != null) {
                boolean loadersRunning = HONEYCOMB;
                for (int i = 0; i < this.mActive.size(); i++) {
                    Fragment f = (Fragment) this.mActive.get(i);
                    if (f != null) {
                        moveToState(f, newState, transit, transitStyle);
                        if (f.mLoaderManager != null) {
                            loadersRunning |= f.mLoaderManager.hasRunningLoaders();
                        }
                    }
                }
                if (!loadersRunning) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mActivity != null && this.mCurState == 5) {
                    this.mActivity.supportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = HONEYCOMB;
                }
            }
        }
    }

    void startPendingDeferredFragments() {
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment f = (Fragment) this.mActive.get(i);
                if (f != null) {
                    performPendingDeferredStart(f);
                }
            }
        }
    }

    void makeActive(Fragment f) {
        if (f.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList();
                }
                f.setIndex(this.mActive.size());
                this.mActive.add(f);
                return;
            }
            f.setIndex(((Integer) this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue());
            this.mActive.set(f.mIndex, f);
        }
    }

    void makeInactive(Fragment f) {
        if (f.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + f.mIndex);
            }
            this.mActive.set(f.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            this.mAvailIndices.add(Integer.valueOf(f.mIndex));
            this.mActivity.invalidateSupportFragmentIndex(f.mIndex);
            f.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean moveToStateNow) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (!fragment.mDetached) {
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = HONEYCOMB;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (moveToStateNow) {
                moveToState(fragment);
            }
        }
    }

    public void removeFragment(Fragment fragment, int transition, int transitionStyle) {
        int i = 0;
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean inactive = !fragment.isInBackStack() ? true : HONEYCOMB;
        if (!fragment.mDetached || inactive) {
            this.mAdded.remove(fragment);
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = HONEYCOMB;
            fragment.mRemoving = true;
            if (!inactive) {
                i = 1;
            }
            moveToState(fragment, i, transition, transitionStyle);
        }
    }

    public void hideFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation anim = loadAnimation(fragment, transition, true, transitionStyle);
                if (anim != null) {
                    fragment.mView.startAnimation(anim);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void showFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = HONEYCOMB;
            if (fragment.mView != null) {
                Animation anim = loadAnimation(fragment, transition, true, transitionStyle);
                if (anim != null) {
                    fragment.mView.startAnimation(anim);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(HONEYCOMB);
        }
    }

    public void detachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                this.mAdded.remove(fragment);
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = HONEYCOMB;
                moveToState(fragment, 1, transition, transitionStyle);
            }
        }
    }

    public void attachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = HONEYCOMB;
            if (!fragment.mAdded) {
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, transition, transitionStyle);
            }
        }
    }

    public Fragment findFragmentById(int id) {
        if (this.mActive != null) {
            int i;
            Fragment f;
            for (i = this.mAdded.size() - 1; i >= 0; i--) {
                f = (Fragment) this.mAdded.get(i);
                if (f != null && f.mFragmentId == id) {
                    return f;
                }
            }
            for (i = this.mActive.size() - 1; i >= 0; i--) {
                f = (Fragment) this.mActive.get(i);
                if (f != null && f.mFragmentId == id) {
                    return f;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByTag(String tag) {
        if (!(this.mActive == null || tag == null)) {
            int i;
            Fragment f;
            for (i = this.mAdded.size() - 1; i >= 0; i--) {
                f = (Fragment) this.mAdded.get(i);
                if (f != null && tag.equals(f.mTag)) {
                    return f;
                }
            }
            for (i = this.mActive.size() - 1; i >= 0; i--) {
                f = (Fragment) this.mActive.get(i);
                if (f != null && tag.equals(f.mTag)) {
                    return f;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String who) {
        if (!(this.mActive == null || who == null)) {
            for (int i = this.mActive.size() - 1; i >= 0; i--) {
                Fragment f = (Fragment) this.mActive.get(i);
                if (f != null && who.equals(f.mWho)) {
                    return f;
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(Runnable action, boolean allowStateLoss) {
        if (!allowStateLoss) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mActivity == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(action);
            if (this.mPendingActions.size() == 1) {
                this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                this.mActivity.mHandler.post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord bse) {
        synchronized (this) {
            int index;
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                index = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + index + " to " + bse);
                }
                this.mBackStackIndices.add(bse);
                return index;
            }
            index = ((Integer) this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
            if (DEBUG) {
                Log.v(TAG, "Adding back stack index " + index + " with " + bse);
            }
            this.mBackStackIndices.set(index, bse);
            return index;
        }
    }

    public void setBackStackIndex(int index, BackStackRecord bse) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            int N = this.mBackStackIndices.size();
            if (index < N) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + index + " to " + bse);
                }
                this.mBackStackIndices.set(index, bse);
            } else {
                while (N < index) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + N);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(N));
                    N++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + index + " with " + bse);
                }
                this.mBackStackIndices.add(bse);
            }
        }
    }

    public void freeBackStackIndex(int index) {
        synchronized (this) {
            this.mBackStackIndices.set(index, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + index);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(index));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean execPendingActions() {
        /*
        r8 = this;
        r7 = 0;
        r5 = r8.mExecutingActions;
        if (r5 == 0) goto L_0x000d;
    L_0x0005:
        r5 = new java.lang.IllegalStateException;
        r6 = "Recursive entry to executePendingTransactions";
        r5.<init>(r6);
        throw r5;
    L_0x000d:
        r5 = android.os.Looper.myLooper();
        r6 = r8.mActivity;
        r6 = r6.mHandler;
        r6 = r6.getLooper();
        if (r5 == r6) goto L_0x0023;
    L_0x001b:
        r5 = new java.lang.IllegalStateException;
        r6 = "Must be called from main thread of process";
        r5.<init>(r6);
        throw r5;
    L_0x0023:
        r0 = 0;
    L_0x0024:
        monitor-enter(r8);
        r5 = r8.mPendingActions;	 Catch:{ all -> 0x0096 }
        if (r5 == 0) goto L_0x0031;
    L_0x0029:
        r5 = r8.mPendingActions;	 Catch:{ all -> 0x0096 }
        r5 = r5.size();	 Catch:{ all -> 0x0096 }
        if (r5 != 0) goto L_0x0058;
    L_0x0031:
        monitor-exit(r8);	 Catch:{ all -> 0x0096 }
        r5 = r8.mHavePendingDeferredStart;
        if (r5 == 0) goto L_0x00a4;
    L_0x0036:
        r3 = 0;
        r2 = 0;
    L_0x0038:
        r5 = r8.mActive;
        r5 = r5.size();
        if (r2 >= r5) goto L_0x009d;
    L_0x0040:
        r5 = r8.mActive;
        r1 = r5.get(r2);
        r1 = (android.support.v4.app.Fragment) r1;
        if (r1 == 0) goto L_0x0055;
    L_0x004a:
        r5 = r1.mLoaderManager;
        if (r5 == 0) goto L_0x0055;
    L_0x004e:
        r5 = r1.mLoaderManager;
        r5 = r5.hasRunningLoaders();
        r3 = r3 | r5;
    L_0x0055:
        r2 = r2 + 1;
        goto L_0x0038;
    L_0x0058:
        r5 = r8.mPendingActions;	 Catch:{ all -> 0x0096 }
        r4 = r5.size();	 Catch:{ all -> 0x0096 }
        r5 = r8.mTmpActions;	 Catch:{ all -> 0x0096 }
        if (r5 == 0) goto L_0x0067;
    L_0x0062:
        r5 = r8.mTmpActions;	 Catch:{ all -> 0x0096 }
        r5 = r5.length;	 Catch:{ all -> 0x0096 }
        if (r5 >= r4) goto L_0x006b;
    L_0x0067:
        r5 = new java.lang.Runnable[r4];	 Catch:{ all -> 0x0096 }
        r8.mTmpActions = r5;	 Catch:{ all -> 0x0096 }
    L_0x006b:
        r5 = r8.mPendingActions;	 Catch:{ all -> 0x0096 }
        r6 = r8.mTmpActions;	 Catch:{ all -> 0x0096 }
        r5.toArray(r6);	 Catch:{ all -> 0x0096 }
        r5 = r8.mPendingActions;	 Catch:{ all -> 0x0096 }
        r5.clear();	 Catch:{ all -> 0x0096 }
        r5 = r8.mActivity;	 Catch:{ all -> 0x0096 }
        r5 = r5.mHandler;	 Catch:{ all -> 0x0096 }
        r6 = r8.mExecCommit;	 Catch:{ all -> 0x0096 }
        r5.removeCallbacks(r6);	 Catch:{ all -> 0x0096 }
        monitor-exit(r8);	 Catch:{ all -> 0x0096 }
        r5 = 1;
        r8.mExecutingActions = r5;
        r2 = 0;
    L_0x0085:
        if (r2 >= r4) goto L_0x0099;
    L_0x0087:
        r5 = r8.mTmpActions;
        r5 = r5[r2];
        r5.run();
        r5 = r8.mTmpActions;
        r6 = 0;
        r5[r2] = r6;
        r2 = r2 + 1;
        goto L_0x0085;
    L_0x0096:
        r5 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x0096 }
        throw r5;
    L_0x0099:
        r8.mExecutingActions = r7;
        r0 = 1;
        goto L_0x0024;
    L_0x009d:
        if (r3 != 0) goto L_0x00a4;
    L_0x009f:
        r8.mHavePendingDeferredStart = r7;
        r8.startPendingDeferredFragments();
    L_0x00a4:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i = 0; i < this.mBackStackChangeListeners.size(); i++) {
                ((OnBackStackChangedListener) this.mBackStackChangeListeners.get(i)).onBackStackChanged();
            }
        }
    }

    void addBackStackState(BackStackRecord state) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(state);
        reportBackStackChanged();
    }

    boolean popBackStackState(Handler handler, String name, int id, int flags) {
        if (this.mBackStack == null) {
            return HONEYCOMB;
        }
        if (name == null && id < 0 && (flags & 1) == 0) {
            int last = this.mBackStack.size() - 1;
            if (last < 0) {
                return HONEYCOMB;
            }
            ((BackStackRecord) this.mBackStack.remove(last)).popFromBackStack(true);
            reportBackStackChanged();
        } else {
            int index = -1;
            if (name != null || id >= 0) {
                BackStackRecord bss;
                index = this.mBackStack.size() - 1;
                while (index >= 0) {
                    bss = (BackStackRecord) this.mBackStack.get(index);
                    if ((name != null && name.equals(bss.getName())) || (id >= 0 && id == bss.mIndex)) {
                        break;
                    }
                    index--;
                }
                if (index < 0) {
                    return HONEYCOMB;
                }
                if ((flags & 1) != 0) {
                    index--;
                    while (index >= 0) {
                        bss = (BackStackRecord) this.mBackStack.get(index);
                        if ((name == null || !name.equals(bss.getName())) && (id < 0 || id != bss.mIndex)) {
                            break;
                        }
                        index--;
                    }
                }
            }
            if (index == this.mBackStack.size() - 1) {
                return HONEYCOMB;
            }
            int i;
            ArrayList<BackStackRecord> states = new ArrayList();
            for (i = this.mBackStack.size() - 1; i > index; i--) {
                states.add(this.mBackStack.remove(i));
            }
            int LAST = states.size() - 1;
            i = 0;
            while (i <= LAST) {
                if (DEBUG) {
                    Log.v(TAG, "Popping back stack state: " + states.get(i));
                }
                ((BackStackRecord) states.get(i)).popFromBackStack(i == LAST ? true : HONEYCOMB);
                i++;
            }
            reportBackStackChanged();
        }
        return true;
    }

    ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> fragments = null;
        if (this.mActive != null) {
            for (int i = 0; i < this.mActive.size(); i++) {
                Fragment f = (Fragment) this.mActive.get(i);
                if (f != null && f.mRetainInstance) {
                    int i2;
                    if (fragments == null) {
                        fragments = new ArrayList();
                    }
                    fragments.add(f);
                    f.mRetaining = true;
                    if (f.mTarget != null) {
                        i2 = f.mTarget.mIndex;
                    } else {
                        i2 = -1;
                    }
                    f.mTargetIndex = i2;
                }
            }
        }
        return fragments;
    }

    void saveFragmentViewState(Fragment f) {
        if (f.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray();
            } else {
                this.mStateArray.clear();
            }
            f.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                f.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    Bundle saveFragmentBasicState(Fragment f) {
        Bundle result = null;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        f.onSaveInstanceState(this.mStateBundle);
        if (!this.mStateBundle.isEmpty()) {
            result = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (f.mView != null) {
            saveFragmentViewState(f);
        }
        if (f.mSavedViewState != null) {
            if (result == null) {
                result = new Bundle();
            }
            result.putSparseParcelableArray(VIEW_STATE_TAG, f.mSavedViewState);
        }
        if (!f.mUserVisibleHint) {
            result.putBoolean(USER_VISIBLE_HINT_TAG, f.mUserVisibleHint);
        }
        return result;
    }

    Parcelable saveAllState() {
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int i;
        int N = this.mActive.size();
        FragmentState[] active = new FragmentState[N];
        boolean haveFragments = HONEYCOMB;
        for (i = 0; i < N; i++) {
            Fragment f = (Fragment) this.mActive.get(i);
            if (f != null) {
                haveFragments = true;
                FragmentState fs = new FragmentState(f);
                active[i] = fs;
                if (f.mState <= 0 || fs.mSavedFragmentState != null) {
                    fs.mSavedFragmentState = f.mSavedFragmentState;
                } else {
                    fs.mSavedFragmentState = saveFragmentBasicState(f);
                    if (f.mTarget != null) {
                        if (f.mTarget.mIndex < 0) {
                            String msg = "Failure saving state: " + f + " has target not in fragment manager: " + f.mTarget;
                            Log.e(TAG, msg);
                            dump("  ", null, new PrintWriter(new LogWriter(TAG)), new String[0]);
                            throw new IllegalStateException(msg);
                        }
                        if (fs.mSavedFragmentState == null) {
                            fs.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fs.mSavedFragmentState, TARGET_STATE_TAG, f.mTarget);
                        if (f.mTargetRequestCode != 0) {
                            fs.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, f.mTargetRequestCode);
                        }
                    }
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + f + ": " + fs.mSavedFragmentState);
                }
            }
        }
        if (haveFragments) {
            int[] added = null;
            BackStackState[] backStack = null;
            if (this.mAdded != null) {
                N = this.mAdded.size();
                if (N > 0) {
                    added = new int[N];
                    for (i = 0; i < N; i++) {
                        added[i] = ((Fragment) this.mAdded.get(i)).mIndex;
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding fragment #" + i + ": " + this.mAdded.get(i));
                        }
                    }
                }
            }
            if (this.mBackStack != null) {
                N = this.mBackStack.size();
                if (N > 0) {
                    backStack = new BackStackState[N];
                    for (i = 0; i < N; i++) {
                        backStack[i] = new BackStackState(this, (BackStackRecord) this.mBackStack.get(i));
                        if (DEBUG) {
                            Log.v(TAG, "saveAllState: adding back stack #" + i + ": " + this.mBackStack.get(i));
                        }
                    }
                }
            }
            Parcelable fms = new FragmentManagerState();
            fms.mActive = active;
            fms.mAdded = added;
            fms.mBackStack = backStack;
            return fms;
        } else if (!DEBUG) {
            return null;
        } else {
            Log.v(TAG, "saveAllState: no fragments!");
            return null;
        }
    }

    void restoreAllState(Parcelable state, ArrayList<Fragment> nonConfig) {
        if (state != null) {
            FragmentManagerState fms = (FragmentManagerState) state;
            if (fms.mActive != null) {
                int i;
                Fragment f;
                FragmentState fs;
                if (nonConfig != null) {
                    for (i = 0; i < nonConfig.size(); i++) {
                        f = (Fragment) nonConfig.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + f);
                        }
                        fs = fms.mActive[f.mIndex];
                        fs.mInstance = f;
                        f.mSavedViewState = null;
                        f.mBackStackNesting = 0;
                        f.mInLayout = HONEYCOMB;
                        f.mAdded = HONEYCOMB;
                        f.mTarget = null;
                        if (fs.mSavedFragmentState != null) {
                            fs.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
                            f.mSavedViewState = fs.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                        }
                    }
                }
                this.mActive = new ArrayList(fms.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (i = 0; i < fms.mActive.length; i++) {
                    fs = fms.mActive[i];
                    if (fs != null) {
                        f = fs.instantiate(this.mActivity);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: adding #" + i + ": " + f);
                        }
                        this.mActive.add(f);
                        fs.mInstance = null;
                    } else {
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: adding #" + i + ": (null)");
                        }
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: adding avail #" + i);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i));
                    }
                }
                if (nonConfig != null) {
                    for (i = 0; i < nonConfig.size(); i++) {
                        f = (Fragment) nonConfig.get(i);
                        if (f.mTargetIndex >= 0) {
                            if (f.mTargetIndex < this.mActive.size()) {
                                f.mTarget = (Fragment) this.mActive.get(f.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + f + " target no longer exists: " + f.mTargetIndex);
                                f.mTarget = null;
                            }
                        }
                    }
                }
                if (fms.mAdded != null) {
                    this.mAdded = new ArrayList(fms.mAdded.length);
                    for (i = 0; i < fms.mAdded.length; i++) {
                        f = (Fragment) this.mActive.get(fms.mAdded[i]);
                        if (f == null) {
                            throw new IllegalStateException("No instantiated fragment for index #" + fms.mAdded[i]);
                        }
                        f.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: making added #" + i + ": " + f);
                        }
                        this.mAdded.add(f);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fms.mBackStack != null) {
                    this.mBackStack = new ArrayList(fms.mBackStack.length);
                    for (i = 0; i < fms.mBackStack.length; i++) {
                        BackStackRecord bse = fms.mBackStack[i].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: adding bse #" + i + " (index " + bse.mIndex + "): " + bse);
                        }
                        this.mBackStack.add(bse);
                        if (bse.mIndex >= 0) {
                            setBackStackIndex(bse.mIndex, bse);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachActivity(FragmentActivity activity) {
        if (this.mActivity != null) {
            throw new IllegalStateException();
        }
        this.mActivity = activity;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = HONEYCOMB;
    }

    public void dispatchCreate() {
        this.mStateSaved = HONEYCOMB;
        moveToState(1, HONEYCOMB);
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = HONEYCOMB;
        moveToState(2, HONEYCOMB);
    }

    public void dispatchStart() {
        this.mStateSaved = HONEYCOMB;
        moveToState(4, HONEYCOMB);
    }

    public void dispatchResume() {
        this.mStateSaved = HONEYCOMB;
        moveToState(5, HONEYCOMB);
    }

    public void dispatchPause() {
        moveToState(4, HONEYCOMB);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(3, HONEYCOMB);
    }

    public void dispatchReallyStop() {
        moveToState(2, HONEYCOMB);
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, HONEYCOMB);
        this.mActivity = null;
    }

    public void dispatchConfigurationChanged(Configuration newConfig) {
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null) {
                    f.onConfigurationChanged(newConfig);
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null) {
                    f.onLowMemory();
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        int i;
        Fragment f;
        boolean show = HONEYCOMB;
        ArrayList<Fragment> newMenus = null;
        if (this.mActive != null) {
            for (i = 0; i < this.mAdded.size(); i++) {
                f = (Fragment) this.mAdded.get(i);
                if (f != null && !f.mHidden && f.mHasMenu && f.mMenuVisible) {
                    show = true;
                    f.onCreateOptionsMenu(menu, inflater);
                    if (newMenus == null) {
                        newMenus = new ArrayList();
                    }
                    newMenus.add(f);
                }
            }
        }
        if (this.mCreatedMenus != null) {
            for (i = 0; i < this.mCreatedMenus.size(); i++) {
                f = (Fragment) this.mCreatedMenus.get(i);
                if (newMenus == null || !newMenus.contains(f)) {
                    f.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = newMenus;
        return show;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean show = HONEYCOMB;
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null && !f.mHidden && f.mHasMenu && f.mMenuVisible) {
                    show = true;
                    f.onPrepareOptionsMenu(menu);
                }
            }
        }
        return show;
    }

    public boolean dispatchOptionsItemSelected(MenuItem item) {
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null && !f.mHidden && f.mHasMenu && f.mMenuVisible && f.onOptionsItemSelected(item)) {
                    return true;
                }
            }
        }
        return HONEYCOMB;
    }

    public boolean dispatchContextItemSelected(MenuItem item) {
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null && !f.mHidden && f.onContextItemSelected(item)) {
                    return true;
                }
            }
        }
        return HONEYCOMB;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mActive != null) {
            for (int i = 0; i < this.mAdded.size(); i++) {
                Fragment f = (Fragment) this.mAdded.get(i);
                if (f != null && !f.mHidden && f.mHasMenu && f.mMenuVisible) {
                    f.onOptionsMenuClosed(menu);
                }
            }
        }
    }

    public static int reverseTransit(int transit) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_CLOSE;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE /*8194*/:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int transit, boolean enter) {
        int animAttr = -1;
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /*4097*/:
                animAttr = enter ? 1 : 2;
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /*4099*/:
                animAttr = enter ? 5 : 6;
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_CLOSE /*8194*/:
                animAttr = enter ? 3 : 4;
                break;
        }
        return animAttr;
    }
}
