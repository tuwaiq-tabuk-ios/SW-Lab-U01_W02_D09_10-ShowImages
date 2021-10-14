

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
    print(#function)
    showImageInCentralImageView(imageName: "rainbow")
    updateLabelTextForButton(nameLabel: "Rainbow",
                             sizeLabel: "750x1624")
  }
  
  
  @IBAction func seconedButtonPressed(_ sender: UIButton) {
    print(#function)
    showImageInCentralImageView(imageName: "building")
    updateLabelTextForButton(nameLabel: "Building",
                             sizeLabel: "750x1624")
  }
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
    showImageInCentralImageView(imageName: "tree")
    updateLabelTextForButton(nameLabel: "Tree",
                             sizeLabel: "750x1624")
  }
  
  
  func showImageInCentralImageView(imageName: String) {
    let image = UIImage (named: imageName)
    centralImageView.image = image
  }
  
  
  func updateLabelTextForButton(nameLabel: String,
                                sizeLabel: String) {
    imageNameLabel.text = nameLabel
    imageSizeLabel.text = sizeLabel
  }
  
}

