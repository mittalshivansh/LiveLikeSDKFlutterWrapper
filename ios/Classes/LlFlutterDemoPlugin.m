#import "LlFlutterDemoPlugin.h"
#if __has_include(<ll_flutter_demo/ll_flutter_demo-Swift.h>)
#import <ll_flutter_demo/ll_flutter_demo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ll_flutter_demo-Swift.h"
#endif

@implementation LlFlutterDemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLlFlutterDemoPlugin registerWithRegistrar:registrar];
}
@end
