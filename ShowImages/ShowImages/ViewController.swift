//
//  ViewController.swift
//  ShowImages
//
//  Created by Bushra alatwi on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  @IBOutlet weak var ImageLabelName: UILabel!
  
  
  @IBOutlet weak var ImageLabelSize: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func FirstButtonPressed(_ sender: UIButton) {
    ShowImageInCentralImageView(image: #imageLiteral(resourceName: "rainbow-1"))
    updateLabelText(name: "Rinbow", size: "1024x1024")
  
  }
  
  
  
  @IBAction func SecondButtonPressed(_ sender: UIButton) {
    ShowImageInCentralImageView(image: #imageLiteral(resourceName: "building-1"))
    updateLabelText(name: "bulding", size: "1024x1024")
  }
  
  @IBAction func ThirdButtonPressed(_ sender: UIButton) {
    ShowImageInCentralImageView(image:#imageLiteral(resourceName: "tree-1") )
    updateLabelText(name:"Tree", size: "1024x1024")
  }
  
 
  
  func ShowImageInCentralImageView(image: UIImage) {
   
    centralImageView.image = image
  }

  func updateLabelText(name:String,size: String) {
ImageLabelName.text = name
ImageLabelSize.text = size

  }
}

