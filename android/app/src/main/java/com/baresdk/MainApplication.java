package com.baresdk;

import android.app.Application;
import android.content.Intent;
import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactNativeHost;
import com.facebook.soloader.SoLoader;
import java.util.List;
import com.facebook.react.BuildConfig;

public class MainApplication extends Application implements ReactApplication {

    private final int OVERLAY_PERMISSION_REQ_CODE = 1;

  private final ReactNativeHost mReactNativeHost =
      new DefaultReactNativeHost(this) {
        @Override
        public boolean getUseDeveloperSupport() {
          return BuildConfig.DEBUG;
        }

        @Override
        protected List<ReactPackage> getPackages() {
          @SuppressWarnings("UnnecessaryLocalVariable")
          List<ReactPackage> packages = new PackageList(this).getPackages();
          // Packages that cannot be autolinked yet can be added manually here, for example:
          // packages.add(new MyReactNativePackage());
          return packages;
        }

        @Override
        protected String getJSMainModuleName() {
          return "index";
        }

        @Override
        protected boolean isNewArchEnabled() {
            // newArchEnabled value set in gradle.properties
            return false;
        }

        @Override
        protected Boolean isHermesEnabled() {
            // hermesEnabled value set in gradle.properties
            return false;
        }
      };

  @Override
  public ReactNativeHost getReactNativeHost() {
    return mReactNativeHost;
  }

  @Override
  public void onCreate() {
    super.onCreate();
    SoLoader.init(this, /* native exopackage */ false);
  // If you opted-in for the New Architecture, we load the native entry point for this app.
  DefaultNewArchitectureEntryPoint.load();
    ReactNativeFlipper.initializeFlipper(this, getReactNativeHost().getReactInstanceManager());

  }
}
