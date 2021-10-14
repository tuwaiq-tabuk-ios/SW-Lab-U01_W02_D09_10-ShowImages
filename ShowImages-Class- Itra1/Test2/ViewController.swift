//
//  ViewController.swift
//  Test2
//
//  Created by Aisha Ali on 10/14/21.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  @IBOutlet weak var displayImageName: UILabel!
  
  
  @IBOutlet weak var displayImageSize: UILabel!
  
  
  @IBAction func firstImage(_ sender: UIButton) {
    showImageAndDetails(image: #imageLiteral(resourceName: "building"), name: "Name: Building", size: "Size: 1125x2436")
    
  }
  
  
  @IBAction func secondButton(_ sender: UIButton) {
    showImageAndDetails(image: #imageLiteral(resourceName: "rainbow"), name: "Name: Rainbow", size: "Size: 1125x2436")
  }
  
  
  @IBAction func thirdButton(_ sender: UIButton) {
    showImageAndDetails(image: #imageLiteral(resourceName: "tree"), name: "Name: Tree", size: "Size: 1125x2436")
  }
  
  
  func showImageAndDetails ( image:UIImage , name:String, size:String){
    centralImageView.image = image
    displayImageName.text = name
    displayImageSize.text = size
    
  }
  
}

