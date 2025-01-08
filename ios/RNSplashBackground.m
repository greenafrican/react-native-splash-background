#import "RNSplashBackground.h"
#import <UIKit/UIKit.h>

@implementation RNSplashBackground

RCT_EXPORT_MODULE();

static UIImageView *splashImageView = nil;

RCT_EXPORT_METHOD(show)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    if (!splashImageView) {
      UIWindow *window = UIApplication.sharedApplication.keyWindow;
      if (window) {
        splashImageView = [[UIImageView alloc] initWithFrame:window.bounds];
        splashImageView.contentMode = UIViewContentModeScaleAspectFill;
        splashImageView.image = [UIImage imageNamed:@"SplashBackground"]; 
        // Make sure "SplashBackground.png" is in your iOS project Images.xcassets 
        // or in the main bundle with the correct name

        [window addSubview:splashImageView];
      }
    }
  });
}

RCT_EXPORT_METHOD(hide)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    if (splashImageView) {
      [splashImageView removeFromSuperview];
      splashImageView = nil;
    }
  });
}

@end
