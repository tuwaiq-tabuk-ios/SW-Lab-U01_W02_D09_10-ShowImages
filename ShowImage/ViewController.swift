//
//  ViewController.swift
//  ShowImage
//
//  Created by Ahmed awadh alqhtani on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var centralImageView: UIImageView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func firstButtonPressed(_ sender: UIButton) {
//    print(#function)
    
    centralImageView.image = #imageLiteral(resourceName: "building")
    
  }
  
  @IBAction func SecondButtonViwe(_ sender: UIButton) {
  
    centralImageView.image = #imageLiteral(resourceName: "rainbow")
  }
  
  @IBAction func ThirdButtonPressed(_ sender: UIButton) {
    
    centralImageView.image = #imageLiteral(resourceName: "tree")
  }
  
}

