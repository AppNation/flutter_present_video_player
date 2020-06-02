#import "FlutterPresentVideoPlayerPlugin.h"
#if __has_include(<flutter_present_video_player/flutter_present_video_player-Swift.h>)
#import <flutter_present_video_player/flutter_present_video_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_present_video_player-Swift.h"
#endif

@implementation FlutterPresentVideoPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPresentVideoPlayerPlugin registerWithRegistrar:registrar];
}
@end
