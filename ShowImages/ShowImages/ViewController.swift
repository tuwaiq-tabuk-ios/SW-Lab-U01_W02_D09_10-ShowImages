//
//  ViewController.swift
//  ShowImages
//
//  Created by Ameera BA on 13/10/2021.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
  showImageInCentralImageView(nameOfImage: "rainbow")
  updateLabelText(name: "rainbow", size: "1125x2436")
  }
  
  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    showImageInCentralImageView (nameOfImage :"tree")
  updateLabelText(name: "tree", size: "1125x2436")
  }
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
   showImageInCentralImageView(nameOfImage: "building")
    updateLabelText(name: "building", size: "1125x2436")
  }
  
  
  
  func showImageInCentralImageView (nameOfImage : String) {
    let image = UIImage(named: nameOfImage)
    centralImageView.image = image
  }
  
  func updateLabelText(name: String, size: String){
    imageNameLabel.text = name
    imageSizeLabel.text = size
  }
  
}

