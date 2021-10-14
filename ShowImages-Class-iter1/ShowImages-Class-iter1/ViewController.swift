//
//  ViewController.swift
//  ShowImages-Class-iter1
//
//  Created by arwa balawi on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var central_Image_View: UIImageView!
    
    
    @IBOutlet weak var imageNameLabel: UILabel!
    
    
    @IBOutlet weak var imageSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        showImageInCentralImageView(name:"rainbow")
        updatelabelTex(nameImage: "rainbow", size: "100x1024")
    }
    
    
    
    @IBAction func secondButtonPressed(_ sender: UIButton ) {
        showImageInCentralImageView(name:"tree")
        updatelabelTex (nameImage:"tree", size:"100x1024" )
    }
    
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        showImageInCentralImageView(name:"building")
        updatelabelTex(nameImage:"building", size:"100x1024" )
    }
    
    
    func showImageInCentralImageView(name: String) {
        let image = UIImage (named: name)
        central_Image_View.image = image
    }
    
    func updatelabelTex(nameImage:String, size:String){
        imageNameLabel.text="Name:\(nameImage)"
        imageSizeLabel.text="size:\(size)"
    }
}

