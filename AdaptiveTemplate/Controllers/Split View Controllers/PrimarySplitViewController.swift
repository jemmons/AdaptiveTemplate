import UIKit



class PrimarySplitViewController: UINavigationController {
  
  
  // Called when the split view collapses; on rotation of Plus or moving an iPad app from full- to split-screen.
  // By default, this will take the nav-stack of the secondary controller and push it on to the primary controller. This is expected and desired when the secondary controller is displaying content. But when it's empty (displaying a place-holder), this would result in an empty screen with no back navigation.
  // So we check for empty details, bailing if we find them.
  override func collapseSecondaryViewController(_ secondaryViewController: UIViewController, for splitViewController: UISplitViewController) {
    if
      let _nav = secondaryViewController as? UINavigationController,
      let _detail = _nav.topViewController as? DetailViewController,
      _detail.detailItem == nil {
      return // Don't do the default -- which will push the view on the stack.
    }
    
    super.collapseSecondaryViewController(secondaryViewController, for: splitViewController)
  }
}
