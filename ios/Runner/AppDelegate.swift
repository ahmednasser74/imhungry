import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
           GMSServices.provideAPIKey("AIzaSyBu2GK5VZFBhBsx0aeySyKC8VSXipIIwxw")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
