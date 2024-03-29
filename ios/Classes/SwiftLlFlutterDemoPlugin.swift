import Flutter
import UIKit


public class SwiftLlFlutterDemoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ll_flutter_demo", binaryMessenger: registrar.messenger())
    let instance = SwiftLlFlutterDemoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    let factory = FLLiveLikeNativeViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "ll-view")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
