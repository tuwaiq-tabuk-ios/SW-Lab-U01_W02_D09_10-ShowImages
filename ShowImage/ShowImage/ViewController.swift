//
//  ViewController.swift
//  ShowImage
//
//  Created by Ahmed awadh alqhtani on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  
  
  @IBOutlet weak var imageName: UILabel!
  @IBOutlet weak var ImageSize: UILabel!
  
  
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
 print(#function)
    
updateImageInCentrlImage("building")
  updateLaple("building")
    
  }
  
  @IBAction func SecondButtonViwe(_ sender: UIButton) {
  
    updateImageInCentrlImage("rainbow")
    updateLaple("rainbow")
  }
  
  @IBAction func ThirdButtonPressed(_ sender: UIButton) {

    updateImageInCentrlImage("tree")
    updateLaple("tree")
  }
  
  
  
  func updateLaple (_ name:String){
    let image = UIImage(named: name)
    imageName.text = name
    ImageSize.text = "\(Int(image!.size.width))x\(Int(image!.size.height))"
  }
  
  func updateImageInCentrlImage (_ name:String) {
    let image = UIImage(named: name)
    centralImageView.image = image
  }
}

