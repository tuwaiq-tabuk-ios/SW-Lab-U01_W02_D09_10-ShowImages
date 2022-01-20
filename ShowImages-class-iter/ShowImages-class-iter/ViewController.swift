//
//  ViewController.swift
//  ShowImages-class-iter
//
//  Created by روابي باجعفر on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  var nameImage = String()
  var sizeImage = String()
  @IBOutlet weak var CentralImageView: UIImageView!
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
 
    updateImageView(image: #imageLiteral(resourceName: "rainbow-1")  )
    updateLabelTex(nameImage: "building", sizeImage: "1000x1024")
  
  }

  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    updateImageView(image: #imageLiteral(resourceName: "tree-1")  )
    updateLabelTex(nameImage: "tree", sizeImage: "1000x1024")
    
  }
  
  
  @IBAction func ThridButton(_ sender: UIButton) {
    updateImageView(image: #imageLiteral(resourceName: "building")  )
    updateLabelTex(nameImage: "rainbow", sizeImage: "1000x1024")
  }
  
  
  
  func updateImageView(image: UIImage) {
    CentralImageView.image = image
  }
  
  
  func updateLabelTex(nameImage : String, sizeImage : String) {
    imageNameLabel.text = "Name :\(nameImage)"
    imageSizeLabel.text = "Size :\(sizeImage)"
  }
  
}
