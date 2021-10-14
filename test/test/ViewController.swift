
//  ViewController.swift
//  ShowImage
//
//  Created by Danah Alharbi on 07/03/1443 .
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var centralImageView: UIImageView!

  @IBOutlet weak var imageName: UILabel!
  @IBOutlet weak var imageSize: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
  //print(#function)
      updateImageInCentrlImage("rainbow")
      updateLabel("rainbow")
      
    }
    
    @IBAction func SecondButtonViwe(_ sender: UIButton) {
      updateImageInCentrlImage("tree")
      updateLabel("tree")
    }
    
    @IBAction func ThirdButtonPressed(_ sender: UIButton) {
      updateImageInCentrlImage("building")
      updateLabel("building")
    }
  func updateImageInCentrlImage (_ name:String) {
    let image = UIImage(named: name)
    centralImageView.image = image
  }
  
  func updateLabel (_ name:String) {
    let image = UIImage(named: name)
    imageName.text = name
    imageSize.text = "\(Int(image!.size.width))x\(Int( image!.size.height))"
  }
}
