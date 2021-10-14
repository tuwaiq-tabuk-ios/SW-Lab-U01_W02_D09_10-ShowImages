//
//  ViewController.swift
//  ShowImages - Class - iter1
//
//  Created by Mohammed on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
    
    
    @IBOutlet weak var imageName: UILabel!
    @IBOutlet weak var imageSize: UILabel!
    
    
    
    @IBOutlet weak var centralView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func firstButton(_ sender: UIButton) {
        print(#function)
         updateImageInCentralView ("rainbow")
        updateLebale("rainbow")
    
    }
    
    
    @IBAction func secondButton(_ sender: UIButton) {
        updateImageInCentralView ("building")
        updateLebale("building")
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) {
        updateImageInCentralView ("tree")
        updateLebale("tree")
    }
    
    func

updateLebale  (_ name:String) {
        let image = UIImage(named: name)
        imageName.text = name
        imageSize.text =
            "\(Int(image! .size.width))x\(Int(image! .size.height))"
    }
    
    func updateImageInCentralView (_ name:String) {
        let image = UIImage(named:name)
        centralView.image = image



}

}
