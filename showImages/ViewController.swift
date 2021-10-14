


import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func firstButton(_ sender: UIButton) {
    print(#function)
    showImageInCenteralImageView(name: "rainbow")
    updateLabelTex (nameLabel: "Rainbow",  sizeLabel:"750x1624")
  }
  
  
  @IBAction func Second_button(_ sender: UIButton) {
    print(#function)
    showImageInCenteralImageView(name: "building")
    updateLabelTex (nameLabel: "Building",  sizeLabel:"750x1624")
  }
  
  
  @IBAction func Third_button(_ sender: UIButton) {
    print(#function)
    showImageInCenteralImageView(name: "tree")
    updateLabelTex (nameLabel: "Tree",  sizeLabel:"750x1624")
  }
  
  
  func showImageInCenteralImageView(name: String)
  {
    let image1 = UIImage (named: name)
    centralImageView.image = image1
  }
  
  
  func updateLabelTex (nameLabel: String , sizeLabel:String){
    imageNameLabel.text = nameLabel
    imageSizeLabel.text = sizeLabel
  }
  
  
  
}





