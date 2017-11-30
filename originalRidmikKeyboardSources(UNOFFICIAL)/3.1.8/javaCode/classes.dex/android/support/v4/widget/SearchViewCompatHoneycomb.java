package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;

class SearchViewCompatHoneycomb {

    interface OnQueryTextListenerCompatBridge {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    SearchViewCompatHoneycomb() {
    }

    public static View newSearchView(Context context) {
        return new SearchView(context);
    }

    public static Object newOnQueryTextListener(final OnQueryTextListenerCompatBridge listener) {
        return new OnQueryTextListener() {
            public boolean onQueryTextSubmit(String query) {
                return listener.onQueryTextSubmit(query);
            }

            public boolean onQueryTextChange(String newText) {
                return listener.onQueryTextChange(newText);
            }
        };
    }

    public static void setOnQueryTextListener(Object searchView, Object listener) {
        ((SearchView) searchView).setOnQueryTextListener((OnQueryTextListener) listener);
    }
}
