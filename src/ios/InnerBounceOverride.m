#import "InnerBounceOverride.h"
#import <Cordova/CDVViewController.h>

@implementation InnerBounceOverride

/**
 * Fugly but working solution to the default bounces value issue on inner scroll
 * views. When using the -webkit-overflow-scrolling: touch; CSS property, an
 * inner UIWebOverflowScrollView is created which does not respect the outer
 * scroll view's bounces value. Hence, we have to set it ourselves.
 */
- (void) trigger:(CDVInvokedUrlCommand*)command {
  for (id subview in self.webView.subviews) {
    if ([[subview class] isSubclassOfClass:[UIScrollView class]]) {
      for(id inner in ((UIView *)subview).subviews) {
        if([[inner class] isSubclassOfClass:[UIView class]]) {
          for(id innerInner in ((UIView *)inner).subviews) {

            if([NSStringFromClass([innerInner class]) isEqual: @"UIWebOverflowScrollView"]) {
              ((UIScrollView *) innerInner).bounces = NO;
            }

          }
        }
      }
    }
  }
}

@end
