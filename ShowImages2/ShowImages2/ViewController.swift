//
//  ViewController.swift
//  ShowImages2
//
//  Created by Ressam Al-Thebailah on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var CentralImageViwe: UIImageView!
  
  @IBOutlet weak var imageNameLabal: UILabel!
  @IBOutlet weak var imageSizeLabal: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
    print(#function)
    showImageInCentralImage(nameOfImage: "rainbow")
    updateLabelTex(name: "rainbow", size: "1024X1024")
  }
  
  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    print(#function)
    showImageInCentralImage(nameOfImage:"tree" )
    updateLabelTex(name: "tree", size: "1024X1024")
  }
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
    print(#function)
    showImageInCentralImage(nameOfImage: "building")
    updateLabelTex(name: "building", size: "1024X1024")
  }
  
  
  func showImageInCentralImage(nameOfImage: String) {
    let image = UIImage(named: nameOfImage)
    CentralImageViwe.image = image
  }
  
  
  func updateLabelTex(name:String,size:String)  {
    
    imageNameLabal.text = name
    imageSizeLabal.text = size
  }
}


