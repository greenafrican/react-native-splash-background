package com.reactnativesplashbackground;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class SplashBackgroundModule extends ReactContextBaseJavaModule {

  private static final String REACT_CLASS = "SplashBackground";
  private ImageView splashImageView;

  public SplashBackgroundModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @ReactMethod
  public void show() {
    Activity activity = getCurrentActivity();
    if (activity == null) return;

    // Optionally inflate a layout or programmatically set an ImageView
    // For demonstration, let's do a simple programmatic ImageView
    splashImageView = new ImageView(activity);
    // Example: set some background resource. The actual resource should be in android/app/src/main/res/drawable
    splashImageView.setImageResource(R.drawable.splash_background);

    activity.addContentView(
      splashImageView,
      new android.view.ViewGroup.LayoutParams(
        android.view.ViewGroup.LayoutParams.MATCH_PARENT,
        android.view.ViewGroup.LayoutParams.MATCH_PARENT
      )
    );
  }

  @ReactMethod
  public void hide() {
    if (splashImageView != null) {
      ((View) splashImageView.getParent()).removeView(splashImageView);
      splashImageView = null;
    }
  }
}
