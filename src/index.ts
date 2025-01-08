import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-splash-background' doesn't seem to be linked. Make sure:\n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const SplashBackground = NativeModules.SplashBackground
  ? NativeModules.SplashBackground
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

/**
 * Shows the splash background
 */
export function show(): void {
  SplashBackground.show();
}

/**
 * Hides the splash background
 */
export function hide(): void {
  SplashBackground.hide();
}

export default {
  show,
  hide,
};
