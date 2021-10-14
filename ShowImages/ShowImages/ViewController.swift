//
//  ViewController.swift
//  ShowImages
//
//  Created by Maha S on 14/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var centralImageView: UIImageView!
    
    @IBOutlet weak var imageNameLable: UILabel!
    @IBOutlet weak var imageSizeLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstButtonTap(_ sender: UIButton) {
        print(#function)
        updateImageInCentralImageView()
        updateLablesText(name: "Rainbow",size: "1000x1024")
    }
    
    
    @IBAction func secondButtonTap(_ sender: UIButton) {
        print(#function)
        centralImageView.image = #imageLiteral(resourceName: "building")
        updateLablesText(name: "Building", size:"1000x1024")
    }
    
    
    
    @IBAction func thirdButtonTap(_ sender: UIButton) {
        print(#function)
        centralImageView.image = #imageLiteral(resourceName: "Tree")
        updateLablesText(name: "Tree", size: "1000x1024")
        
    }
    
    
    
    func updateImageInCentralImageView(){
        let image = UIImage(named: "rainbow")
        centralImageView.image = image
    }
    
    
    func updateLablesText(name: String, size: String){
        
        imageNameLable.text = name
        imageSizeLable.text = size
        
    }
}
