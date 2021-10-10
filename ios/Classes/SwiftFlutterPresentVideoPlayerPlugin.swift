import Flutter
import UIKit
import AVKit

public class SwiftFlutterPresentVideoPlayerPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.doom.flutter_present_video_player", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterPresentVideoPlayerPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "play" {
            if let argument = call.arguments as? [Any], let url = argument.first as? String {
                play(urlString: url)
            }
        }
    }

    private func play(urlString: String) {
        guard let rootVC = UIApplication.shared.keyWindow?.rootViewController,
            let url = URL(fileURLWithPath: urlString)
        let player = AVPlayer(url: url)
        let vc = AVPlayerViewController()
        vc.player = player
        rootVC.present(vc, animated: true) {
            vc.player?.play()
        }
    }
}
