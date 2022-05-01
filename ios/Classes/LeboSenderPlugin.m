#import "LeboSenderPlugin.h"
#if __has_include(<lebo_sender/lebo_sender-Swift.h>)
#import <lebo_sender/lebo_sender-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "lebo_sender-Swift.h"
#endif

@implementation LeboSenderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLeboSenderPlugin registerWithRegistrar:registrar];
}
@end
