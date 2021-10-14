//
//  ViewController.swift
//  ShowImageApp-class
//
//  Created by Reema Mousa on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var centralImageView: UIImageView!
    
    @IBOutlet weak var imageNameLabele: UILabel!
    
    @IBOutlet weak var imageSizeLabele: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonFirstView(_ sender: UIButton) {
        showImageInCentralImageView(image: #imageLiteral(resourceName: "building"))
        updateLabel(name: "building", size: "1024px")
    }
    
    @IBAction func ButtonsocendView(_ sender: UIButton) {
        
            showImageInCentralImageView(image: #imageLiteral(resourceName: "rainbow"))
            updateLabel(name: "rainbow", size: "1024px")
        
    }
    
    @IBAction func ButtonthirdView(_ sender: UIButton) {
        
            showImageInCentralImageView(image: #imageLiteral(resourceName: "building"))
            updateLabel(name: "tree", size: "1024px")
    }
    
    //function
    
    func showImageInCentralImageView (image:UIImage)
    {
        centralImageView.image = image
    }
    
    func updateLabel(name:String , size:String){
        imageNameLabele.text = name
        imageSizeLabele.text = size
    }

}

