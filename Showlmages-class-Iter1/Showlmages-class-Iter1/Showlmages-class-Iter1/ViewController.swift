//
//  ViewController.swift
//  Showlmages-class-Iter1
//
//  Created by ahlam  on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var centralImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    
    @IBOutlet weak var sizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstButtonPressad(_ sender: UIButton) {
        showImageInCentralImageView( name: "rainbow")
        updateLabelText(nameImage :"rainbow", size: "100x1024")
    }
    
    
    @IBAction func secondButtonPressd(_ sender: UIButton) {
        showImageInCentralImageView ( name: "building")
        updateLabelText( nameImage :"building", size: "100x1024")
    }
    
    
    @IBAction func thirdButtonPressd(_ sender: UIButton) {
        showImageInCentralImageView ( name: "tree")
        updateLabelText( nameImage :"tree", size: "100x1024")
    }

    
    func showImageInCentralImageView(name:String) {
        let image = UIImage(named: name )
        centralImageView.image = image
    }
    

    func updateLabelText(nameImage:String, size:String) {
        nameLabel.text = "Name: \(nameImage)"
        sizeLabel.text = "size:\(size)"
    }
    
}



