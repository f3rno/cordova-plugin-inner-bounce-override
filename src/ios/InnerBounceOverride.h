#import <Cordova/CDVPlugin.h>

@interface InnerBounceOverride : CDVPlugin {}

- (void) trigger:(CDVInvokedUrlCommand*)command;

@end
