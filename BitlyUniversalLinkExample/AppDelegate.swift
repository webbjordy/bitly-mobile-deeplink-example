import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // Handle Universal Link routing
    func application(_ application: UIApplication,
                     continue userActivity: NSUserActivity,
                     restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {

        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let url = userActivity.webpageURL else {
            return false
        }

        print("Universal Link opened: \(url.absoluteString)")

        let path = url.path
        switch path {
        case "/profile":
            print("→ Routing to Profile Screen")
        case "/settings":
            print("→ Routing to Settings Screen")
        default:
            print("→ Routing to Home or unknown route")
        }

        return true
    }
}
