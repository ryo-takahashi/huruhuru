import UIKit
import Huruhuru

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Huruhuru.shared.start(sendTo: Huruhuru.RepositoryInfo(ownerName: "ryo-takahashi", repositoryName: "create-issue-sandbox") , token: Huruhuru.GithubToken(token: Secret.githubToken), supportDetectGesture: Huruhuru.SupportDetectGesture(types: [.shake, .screenshot]) )
        return true
    }
}

