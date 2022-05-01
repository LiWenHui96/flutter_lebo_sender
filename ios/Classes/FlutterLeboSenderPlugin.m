#import "FlutterLeboSenderPlugin.h"
#if __has_include(<flutter_lebo_sender/flutter_lebo_sender-Swift.h>)
#import <flutter_lebo_sender/flutter_lebo_sender-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_lebo_sender-Swift.h"
#endif

@implementation FlutterLeboSenderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLeboSenderPlugin registerWithRegistrar:registrar];
}
@end
