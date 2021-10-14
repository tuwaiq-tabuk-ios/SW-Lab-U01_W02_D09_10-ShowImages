//
//  ViewController.swift
//  Show_Images_class_Lter2
//
//  Created by محمد العطوي on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centarlView: UIImageView!
    
    
    @IBOutlet weak var imagName: UILabel!
    @IBOutlet weak var imagSize: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func building(_ sender: UIButton) {
        showImagInCentralImagViwe("building")
       
        updateImageInCentrl("building")
        
        
    }
    
    @IBAction func raindow(_ sender: UIButton) {
        showImagInCentralImagViwe("rainbow")
       
        updateImageInCentrl("rainbow")
        
        
    }
    
    
    @IBAction func tree(_ sender: UIButton) {
        
        showImagInCentralImagViwe("tree")
       
        updateImageInCentrl("tree")
        
        
        
    }
    
    
    func showImagInCentralImagViwe(_ name: String) {
        let image = UIImage (named: name)
        centarlView.image = image
        
            
    }
    
    func updateImageInCentrl (_ name: String) {
                
        imagName.text = name
        
        imagSize.text = "\(centarlView.image!.size.width)x\(centarlView.image!.size.height)"
    }
    

}



