//
//  ViewController.swift
//  showimages
//
//  Created by rasha  on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var CentralImageView: UIImageView!
  
  @IBOutlet weak var ImageNameView: UILabel!
  
  
  @IBOutlet weak var ImageSizeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  

  @IBAction func firstButtonPressed(_ sender: UIButton) {
    ShowImageInCetralImageView(Name: "building")
    updateLadelTex(nameImage: "building" , size: "1000x1024")
  }
  
  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    ShowImageInCetralImageView(Name: "rainbow")
    updateLadelTex(nameImage: "rainbow", size: "1000x1024")
  }
  
  
  @IBAction func thirrdButtonPressed(_ sender: UIButton) {
    ShowImageInCetralImageView(Name: "tree")
    updateLadelTex(nameImage: "tree", size:" 1000x1024")
  }

  
  
  func ShowImageInCetralImageView(Name:String){
    let image = UIImage(named: Name)
    CentralImageView.image = image
  }
  
  
  func updateLadelTex(nameImage:String,size:String)  {
   ImageNameView.text="Name: \(nameImage)"
    ImageSizeLabel.text="Size: \(size)"
  }
    
  }




