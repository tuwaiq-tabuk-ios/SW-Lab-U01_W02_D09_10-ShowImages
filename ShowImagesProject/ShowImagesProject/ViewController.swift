//
//  ViewController.swift
//  ShowImagesProject
//
//  Created by A A on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
    print(#function)
    updateImageInCentralImage()
    updateLabelText(name: "Rainbow", size: "1000x1024")
  }
  
  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    print(#function)
    centralImageView.image = #imageLiteral(resourceName: "Building")
    updateLabelText(name: "Building",size: "1000x1024")
  }
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
    print(#function)
    centralImageView.image = #imageLiteral(resourceName: "Tree")
    updateLabelText(name: "Tree", size: "1000x1024")
  }
  
  
  func updateImageInCentralImage(){
    let image = UIImage( named: "Rainbow")
    centralImageView.image = image
  }
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  
  func updateLabelText(name:String,size:String ){
    imageNameLabel.text = name
    imageSizeLabel.text = size
  }
  
  
}

