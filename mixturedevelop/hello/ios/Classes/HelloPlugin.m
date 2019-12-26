#import "HelloPlugin.h"
#import <hello/hello-Swift.h>

@implementation HelloPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloPlugin registerWithRegistrar:registrar];
}
@end
