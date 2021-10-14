//
//  ViewController.swift
//  ShowImage
//
//  Created by Marzouq Almukhlif on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageSizeLabel: UILabel!
  
  @IBOutlet weak var FirstView: UIView!
  @IBOutlet weak var SecoundView: UIView!
  @IBOutlet weak var ThirdView: UIView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    centralImageView.image = UIImage(systemName: "photo")
    centralImageView.contentMode = .scaleAspectFit
    imageNameLabel.text = ""
    imageSizeLabel.text = ""
    
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
    updateImageInCentralImageView("rainbow")
    updateLabelsText("rainbow")
    animationButtonClick(FirstView)
    
  }
  
  
  @IBAction func secondButtonPressed(_ sender: UIButton) {
    updateImageInCentralImageView("building")
    updateLabelsText("building")
    animationButtonClick(SecoundView)
    
  }
  
  
  @IBAction func thirdButtonPressed(_ sender: UIButton) {
    updateImageInCentralImageView("tree")
    updateLabelsText("tree")
    animationButtonClick(ThirdView)
    
  }
  
  
  func updateImageInCentralImageView(_ imageName:String) {
    let image = UIImage(named: imageName)
    
    // Animation for change image
    UIView.transition(with: centralImageView,
                      duration: 0.75,
                      options: .transitionCrossDissolve,
                      animations: { self.centralImageView.image = image },
                      completion: nil)
    
    centralImageView.contentMode = .scaleToFill
    
    
    
    // Animation for change background color of Root_View
    UIView.animate(withDuration: 0.75) {
      // extension for get averageColor from image
      self.view.backgroundColor = image?.averageColor
    }
  }
  
  func updateLabelsText(_ text:String){
    let image = UIImage(named: text)
    imageNameLabel.text = "ImageName: " + text
    imageSizeLabel.text = "ImageSize: \(Int(image!.size.width))x\(Int(image!.size.height))"
  }
  
  // Animation if click the button
  func animationButtonClick(_ button:UIView){
    UIView.animate(withDuration: 0.2,
                   animations: {
                    button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                   },
                   completion: { _ in
                    UIView.animate(withDuration: 0.2) {
                      button.transform = CGAffineTransform.identity
                    }
                   })
  }
  
  
}

