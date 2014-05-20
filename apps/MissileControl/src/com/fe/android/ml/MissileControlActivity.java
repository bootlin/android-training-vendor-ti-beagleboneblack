package com.fe.android.ml;

import com.fe.android.backend.DummyBackend;
import com.fe.android.backend.MissileBackendImpl;
import com.fe.android.backend.USBBackend;
import com.fe.android.backend.MissileBackendImpl.Direction;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ToggleButton;

public class MissileControlActivity extends Activity {
	private final String TAG = getClass().getSimpleName();

	private MissileBackendImpl mML;

	public void onButtonBackendClick(View view) {
		Log.i(TAG, "onButtonBackendClick");
		if(((ToggleButton)view).isChecked()) {
			Log.i(TAG, "USB Mode");
			mML = new USBBackend();
		} else {
			Log.i(TAG, "Dummy");
			mML = new DummyBackend();
		}
	}

	public void onButtonLeftClick(View view) {
		mML.move(Direction.LEFT);
	}

	public void onButtonDownClick(View view) {
		mML.move(Direction.DOWN);
	}

	public void onButtonFireClick(View view) {
		mML.fire();
	}

	public void onButtonRightClick(View view) {
		mML.move(Direction.RIGHT);
	}

	public void onButtonUpClick(View view) {
		mML.move(Direction.UP);
	}

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        mML = new DummyBackend();
    }
}
