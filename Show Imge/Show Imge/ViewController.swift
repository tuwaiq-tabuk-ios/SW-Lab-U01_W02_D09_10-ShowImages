//
//  ViewController.swift
//  Show Imge
//
//  Created by apple on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centralImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func firstButton(_sender:UIButton) { print(#function)
        showImageInCentalImageView(name: "rainbow")
        updateLabelText(imageName:"Name: rainbow", sizeName:"750x1024")
    }
    
    
    
    @IBAction func seconedButton(_ sender: UIButton) {
        print(#function)
        showImageInCentalImageView(name: "building")
        updateLabelText(imageName:"Name: building", sizeName:"750x1024")
        
        
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) { print(#function)
        showImageInCentalImageView(name:"tree")
        updateLabelText(imageName:"Name: tree", sizeName:"750x1024")
    }
    
    func showImageInCentalImageView(name:String ){
        let image = UIImage(named: name)
        centralImageView.image = image
    }
    
    func updateLabelText(imageName:String, sizeName:String){
        nameLabel.text = imageName
        sizeLabel.text = sizeName
    }
    
}



















