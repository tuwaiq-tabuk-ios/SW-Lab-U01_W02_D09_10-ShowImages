//
//  ViewController.swift
//  Night_Show_Imges _Abrar_Alqarni
//
//  Created by ABRAR ALQARNI on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

//  outlet
  @IBOutlet weak var centralImageName: UIImageView!
  @IBOutlet weak var imageName: UILabel!
  @IBOutlet weak var imageSize: UILabel!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
    updatImageInCentralImage(name: "light")
    updateLabel(name: "light")
    
  }
  
  
  
  
  @IBAction func seconButtonPressed(_ sender: UIButton) {
    updatImageInCentralImage(name: "tarm")
    updateLabel(name: "tarm")
  }
  
  
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
    updatImageInCentralImage(name: "clock")
    updateLabel(name: "clock")
  }
  
 
  func updatImageInCentralImage(name:String) {
    let image = UIImage(named: name)
    centralImageName.image = image
  }
  func updateLabel (name:String) {
    let image = UIImage(named: name)
    imageName.text = name
    imageSize.text = "\(Int(image!.size.width))x\(Int(image!.size.height))"
  }
  
  
}

