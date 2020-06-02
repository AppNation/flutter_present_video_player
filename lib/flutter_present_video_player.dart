import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPresentVideoPlayer {
  static const MethodChannel _channel =
      const MethodChannel('com.doom.flutter_present_video_player');

  static play(String url) {
    _channel.invokeListMethod('play', [url]);
  }
}
