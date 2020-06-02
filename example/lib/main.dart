import 'package:flutter/material.dart';
import 'package:flutter_present_video_player/flutter_present_video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                FlutterPresentVideoPlayer.play(
                    "https://www.runoob.com/try/demo_source/movie.mp4");
              },
              child: Text(
                "Play",
              )),
        ),
      ),
    );
  }
}
