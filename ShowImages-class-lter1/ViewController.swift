//
//  ViewController.swift
//  ShowImages-class-lter1
//
//  Created by عبدالعزيز البلوي on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var centralImageView: UIImageView!
  
  @IBOutlet weak var Name: UILabel!
  
  @IBOutlet weak var size: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func firstButton(_ sender: UIButton) {
    updateImageInCentralImageView("tree")
    centralImageView.image = UIImage(named:"tree")
    Name.text = "tree"
    updateLabelsText()
  }
  
  @IBAction func socndButton(_ sender: UIButton) {
    updateImageInCentralImageView("rainbow")
    centralImageView.image = UIImage(named:"rainbow")
    Name.text = "rainbow"
     updateLabelsText()
  }
  
  @IBAction func thirdButtun(_ sender: UIButton) {
    updateImageInCentralImageView("building")
    centralImageView.image = UIImage(named:"building")
    Name.text = "building"
    updateLabelsText()
  }
  
  func updateImageInCentralImageView(_ nameImage:String) {
    let image = UIImage(named: nameImage)
    centralImageView.image = image

    
    
  }
  
  func updateLabelsText() {
    size.text = "\(centralImageView.image!.size.width)x\(centralImageView.image!.size.height)"
    
  }
 
  
}

