#import "CounterPlugin.h"
#if __has_include(<counter/counter-Swift.h>)
#import <counter/counter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "counter-Swift.h"
#endif

@implementation CounterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCounterPlugin registerWithRegistrar:registrar];
}
@end
