import AVFAudio
import HaishinKit
import Logboard
import UIKit

let logger = LBLogger.with("com.haishinkit.Exsample.iOS")

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // LBLogger.with(HaishinKitIdentifier).level = .trace
        let session = AVAudioSession.sharedInstance()
        do {
            // If you set the "mode" parameter, stereo capture is not possible, so it is left unspecified.
            try session.setCategory(.playAndRecord)
            try session.setActive(true)
        } catch {
            logger.error(error)
        }
        return true
    }
}
