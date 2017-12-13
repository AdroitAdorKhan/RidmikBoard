package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class FragmentActivity extends Activity {
    private static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    private static final String TAG = "FragmentActivity";
    HCSparseArray<LoaderManagerImpl> mAllLoaderManagers;
    boolean mCheckedForLoaderManager;
    boolean mCreated;
    final FragmentManagerImpl mFragments = new FragmentManagerImpl();
    final Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (FragmentActivity.this.mStopped) {
                        FragmentActivity.this.doReallyStop(false);
                        return;
                    }
                    return;
                case 2:
                    FragmentActivity.this.mFragments.dispatchResume();
                    FragmentActivity.this.mFragments.execPendingActions();
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
        }
    };
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mOptionsMenuInvalidated;
    boolean mReallyStopped;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;

    static class FragmentTag {
        public static final int[] Fragment = new int[]{16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

    static final class NonConfigurationInstances {
        Object activity;
        HashMap<String, Object> children;
        Object custom;
        ArrayList<Fragment> fragments;
        HCSparseArray<LoaderManagerImpl> loaders;

        NonConfigurationInstances() {
        }
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        int index = requestCode >> 16;
        if (index != 0) {
            index--;
            if (this.mFragments.mActive == null || index < 0 || index >= this.mFragments.mActive.size()) {
                Log.w(TAG, "Activity result fragment index out of range: 0x" + Integer.toHexString(requestCode));
                return;
            }
            Fragment frag = (Fragment) this.mFragments.mActive.get(index);
            if (frag == null) {
                Log.w(TAG, "Activity result no fragment exists for index: 0x" + Integer.toHexString(requestCode));
            }
            frag.onActivityResult(65535 & requestCode, resultCode, data);
            return;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public void onBackPressed() {
        if (!this.mFragments.popBackStackImmediate()) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.mFragments.dispatchConfigurationChanged(newConfig);
    }

    protected void onCreate(Bundle savedInstanceState) {
        this.mFragments.attachActivity(this);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(savedInstanceState);
        NonConfigurationInstances nc = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nc != null) {
            this.mAllLoaderManagers = nc.loaders;
        }
        if (savedInstanceState != null) {
            this.mFragments.restoreAllState(savedInstanceState.getParcelable(FRAGMENTS_TAG), nc != null ? nc.fragments : null);
        }
        this.mFragments.dispatchCreate();
    }

    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        if (featureId != 0) {
            return super.onCreatePanelMenu(featureId, menu);
        }
        boolean show = super.onCreatePanelMenu(featureId, menu) | this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater());
        if (VERSION.SDK_INT >= 11) {
            return show;
        }
        return true;
    }

    public View onCreateView(String name, Context context, AttributeSet attrs) {
        Fragment fragment = null;
        int containerId = 0;
        if (!"fragment".equals(name)) {
            return super.onCreateView(name, context, attrs);
        }
        String fname = attrs.getAttributeValue(null, "class");
        TypedArray a = context.obtainStyledAttributes(attrs, FragmentTag.Fragment);
        if (fname == null) {
            fname = a.getString(0);
        }
        int id = a.getResourceId(1, -1);
        String tag = a.getString(2);
        a.recycle();
        View parent = null;
        if (parent != null) {
            containerId = parent.getId();
        }
        if (containerId == -1 && id == -1 && tag == null) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + fname);
        }
        if (id != -1) {
            fragment = this.mFragments.findFragmentById(id);
        }
        if (fragment == null && tag != null) {
            fragment = this.mFragments.findFragmentByTag(tag);
        }
        if (fragment == null && containerId != -1) {
            fragment = this.mFragments.findFragmentById(containerId);
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(id) + " fname=" + fname + " existing=" + fragment);
        }
        if (fragment == null) {
            fragment = Fragment.instantiate(this, fname);
            fragment.mFromLayout = true;
            fragment.mFragmentId = id != 0 ? id : containerId;
            fragment.mContainerId = containerId;
            fragment.mTag = tag;
            fragment.mInLayout = true;
            fragment.mFragmentManager = this.mFragments;
            fragment.onInflate(this, attrs, fragment.mSavedFragmentState);
            this.mFragments.addFragment(fragment, true);
        } else if (fragment.mInLayout) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(id) + ", tag " + tag + ", or parent id 0x" + Integer.toHexString(containerId) + " with another fragment for " + fname);
        } else {
            fragment.mInLayout = true;
            if (!fragment.mRetaining) {
                fragment.onInflate(this, attrs, fragment.mSavedFragmentState);
            }
            this.mFragments.moveToState(fragment);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + fname + " did not create a view.");
        }
        if (id != 0) {
            fragment.mView.setId(id);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(tag);
        }
        return fragment.mView;
    }

    protected void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.dispatchDestroy();
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (VERSION.SDK_INT >= 5 || keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        onBackPressed();
        return true;
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        if (super.onMenuItemSelected(featureId, item)) {
            return true;
        }
        switch (featureId) {
            case 0:
                return this.mFragments.dispatchOptionsItemSelected(item);
            case 6:
                return this.mFragments.dispatchContextItemSelected(item);
            default:
                return false;
        }
    }

    public void onPanelClosed(int featureId, Menu menu) {
        switch (featureId) {
            case 0:
                this.mFragments.dispatchOptionsMenuClosed(menu);
                break;
        }
        super.onPanelClosed(featureId, menu);
    }

    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            this.mFragments.dispatchResume();
        }
        this.mFragments.dispatchPause();
    }

    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.mFragments.dispatchResume();
        this.mFragments.execPendingActions();
    }

    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        if (featureId != 0 || menu == null) {
            return super.onPreparePanel(featureId, view, menu);
        }
        if (this.mOptionsMenuInvalidated) {
            this.mOptionsMenuInvalidated = false;
            menu.clear();
            onCreatePanelMenu(featureId, menu);
        }
        if ((super.onPreparePanel(featureId, view, menu) | this.mFragments.dispatchPrepareOptionsMenu(menu)) && menu.hasVisibleItems()) {
            return true;
        }
        return false;
    }

    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object custom = onRetainCustomNonConfigurationInstance();
        ArrayList<Fragment> fragments = this.mFragments.retainNonConfig();
        boolean retainLoaders = false;
        if (this.mAllLoaderManagers != null) {
            for (int i = this.mAllLoaderManagers.size() - 1; i >= 0; i--) {
                LoaderManagerImpl lm = (LoaderManagerImpl) this.mAllLoaderManagers.valueAt(i);
                if (lm.mRetaining) {
                    retainLoaders = true;
                } else {
                    lm.doDestroy();
                    this.mAllLoaderManagers.removeAt(i);
                }
            }
        }
        if (fragments == null && !retainLoaders && custom == null) {
            return null;
        }
        Object nci = new NonConfigurationInstances();
        nci.activity = null;
        nci.custom = custom;
        nci.children = null;
        nci.fragments = fragments;
        nci.loaders = this.mAllLoaderManagers;
        return nci;
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Parcelable p = this.mFragments.saveAllState();
        if (p != null) {
            outState.putParcelable(FRAGMENTS_TAG, p);
        }
    }

    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            } else if (!this.mCheckedForLoaderManager) {
                this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, false);
            }
            this.mCheckedForLoaderManager = true;
        }
        this.mFragments.dispatchStart();
        if (this.mAllLoaderManagers != null) {
            for (int i = this.mAllLoaderManagers.size() - 1; i >= 0; i--) {
                LoaderManagerImpl lm = (LoaderManagerImpl) this.mAllLoaderManagers.valueAt(i);
                lm.finishRetain();
                lm.doReportStart();
            }
        }
    }

    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nc = (NonConfigurationInstances) getLastNonConfigurationInstance();
        return nc != null ? nc.custom : null;
    }

    public void supportInvalidateOptionsMenu() {
        if (VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
        } else {
            this.mOptionsMenuInvalidated = true;
        }
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        String innerPrefix;
        if (VERSION.SDK_INT >= 11) {
            writer.print(prefix);
            writer.print("Local FragmentActivity ");
            writer.print(Integer.toHexString(System.identityHashCode(this)));
            writer.println(" State:");
            innerPrefix = prefix + "  ";
            writer.print(innerPrefix);
            writer.print("mCreated=");
            writer.print(this.mCreated);
            writer.print("mResumed=");
            writer.print(this.mResumed);
            writer.print(" mStopped=");
            writer.print(this.mStopped);
            writer.print(" mReallyStopped=");
            writer.println(this.mReallyStopped);
            writer.print(innerPrefix);
            writer.print("mLoadersStarted=");
            writer.println(this.mLoadersStarted);
        } else {
            writer.print(prefix);
            writer.print("Local FragmentActivity ");
            writer.print(Integer.toHexString(System.identityHashCode(this)));
            writer.println(" State:");
            innerPrefix = prefix + "  ";
            writer.print(innerPrefix);
            writer.print("mCreated=");
            writer.print(this.mCreated);
            writer.print("mResumed=");
            writer.print(this.mResumed);
            writer.print(" mStopped=");
            writer.print(this.mStopped);
            writer.print(" mReallyStopped=");
            writer.println(this.mReallyStopped);
            writer.print(innerPrefix);
            writer.print("mLoadersStarted=");
            writer.println(this.mLoadersStarted);
        }
        if (this.mLoaderManager != null) {
            writer.print(prefix);
            writer.print("Loader Manager ");
            writer.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            writer.println(AlternatesBundleKeys.SPAN_KEY_DELIMITER);
            this.mLoaderManager.dump(prefix + "  ", fd, writer, args);
        }
        this.mFragments.dump(prefix, fd, writer, args);
    }

    void doReallyStop(boolean retaining) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = retaining;
            this.mHandler.removeMessages(1);
            onReallyStop();
        }
    }

    void onReallyStop() {
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (this.mLoaderManager != null) {
                if (this.mRetaining) {
                    this.mLoaderManager.doRetain();
                } else {
                    this.mLoaderManager.doStop();
                }
            }
        }
        this.mFragments.dispatchReallyStop();
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments;
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        if (requestCode == -1 || (-65536 & requestCode) == 0) {
            super.startActivityForResult(intent, requestCode);
            return;
        }
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode) {
        if (requestCode == -1) {
            super.startActivityForResult(intent, -1);
        } else if ((-65536 & requestCode) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else {
            super.startActivityForResult(intent, ((fragment.mIndex + 1) << 16) + (65535 & requestCode));
        }
    }

    void invalidateSupportFragmentIndex(int index) {
        if (this.mAllLoaderManagers != null) {
            LoaderManagerImpl lm = (LoaderManagerImpl) this.mAllLoaderManagers.get(index);
            if (lm != null && !lm.mRetaining) {
                lm.doDestroy();
                this.mAllLoaderManagers.remove(index);
            }
        }
    }

    public LoaderManager getSupportLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    LoaderManagerImpl getLoaderManager(int index, boolean started, boolean create) {
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new HCSparseArray();
        }
        LoaderManagerImpl lm = (LoaderManagerImpl) this.mAllLoaderManagers.get(index);
        if (lm != null) {
            lm.updateActivity(this);
            return lm;
        } else if (!create) {
            return lm;
        } else {
            lm = new LoaderManagerImpl(this, started);
            this.mAllLoaderManagers.put(index, lm);
            return lm;
        }
    }
}
