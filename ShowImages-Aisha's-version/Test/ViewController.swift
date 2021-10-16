//
//  ViewController.swift
//  Test
//
//  Created by Aisha Ali on 10/13/21.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    // Do any additional setup after loading the view.
  }
  var imagesArray: [UIImage] = [#imageLiteral(resourceName: "building"),#imageLiteral(resourceName: "rainbow"),#imageLiteral(resourceName: "tree"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "9")]
  var displaImagesValue = true
  
  
  @IBOutlet weak var showSizeInLabel: UILabel!
  
  
  @IBOutlet weak var showNameInLabel: UILabel!
  
  
  @IBOutlet weak var firstImageView: UIImageView!
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  @IBOutlet weak var secondImageView: UIImageView!
  
  
  @IBOutlet weak var thirdImageView: UIImageView!
  
  
  @IBAction func backwardButtonPressed(_ sender: UIButton) {
    displaImagesValue = true
    //0
    firstImageView.image = imagesArray[0]
    secondImageView.image = imagesArray[1]
    thirdImageView.image = imagesArray [2]
  }
  
  
  @IBAction func farwardButtonPressed(_ sender: UIButton) {
    displaImagesValue = false
    //1
    firstImageView.image = imagesArray[3]
    secondImageView.image = imagesArray[4]
    thirdImageView.image = imagesArray [5]
  }
  
  
  @IBAction func firstButton(_ sender: UIButton) {
    
    
    if (displaImagesValue == true){
      showImageandDetails(image: imagesArray[0], name: "Name: Building", size: "Size: 1125x2436")
    }
    else{
      showImageandDetails(image: imagesArray[3], name: "Name: Ocean", size: "Size: 750x878")
    }
    print(#function)
  }
  
  
  @IBAction func secondButton(_ sender: UIButton) {
    if (displaImagesValue == true){
      showImageandDetails(image: imagesArray[1], name: "Name: Rainbow", size: "Size: 1125x2436")
    }
    else{
      showImageandDetails(image: imagesArray[4], name: "Name: Yard", size: "Size: 600x800")
    }
    print(#function)
  }
  
  
  @IBAction func thirdButton(_ sender: UIButton) {
    if (displaImagesValue == true){
      showImageandDetails(image: imagesArray[2], name: "Name: Tree", size: "Size: 1125x2436")
    }
    else{
      showImageandDetails(image: imagesArray[5], name: "Name: Stair", size: "Size: 1024x1280")
    }
    print(#function)
  }
  
  
  func showImageandDetails ( image:UIImage , name:String, size:String){
    centralImageView.image = image
    showNameInLabel.text = name
    showSizeInLabel.text = size
  }
}
