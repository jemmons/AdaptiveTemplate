import UIKit

class DetailViewController: UIViewController {

  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  

  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.description
        }
    }
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
    //When collapsed, the displayMode button will hide itself. But its presense will still disable the primary controller's back button if we don't explicitly ask them to co-exist.
    navigationItem.leftItemsSupplementBackButton = true
    configureView()
  }


  var detailItem: NSDate? {
    didSet {
        // Update the view.
        configureView()
    }
  }
}

