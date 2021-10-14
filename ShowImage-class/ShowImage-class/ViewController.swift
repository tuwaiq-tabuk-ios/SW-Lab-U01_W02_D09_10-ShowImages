//
//  ViewController.swift
//  ShowImage-class
//
//  Created by bushra nazal alatwi on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centralImageView: UIImageView!
   
    
    @IBOutlet weak var imgeNameLabel: UILabel!
    
    @IBOutlet weak var imageSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        showImageInCentralImageView(name:"building")
        updateLabelTex(nameImage:"building", size:"1000x1024" )
    }
    
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        showImageInCentralImageView(name:"rainbow")
        updateLabelTex(nameImage:"rainbow", size:"1000x1024")
    }
    
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        showImageInCentralImageView(name:"tree")
        updateLabelTex(nameImage: "tree", size:"1000x1024")
    }
    
    
    func showImageInCentralImageView(name: String){
        let image = UIImage(named:name)
        centralImageView.image=image
    }
    
    
    func updateLabelTex(nameImage:String,size:String)  {
        imgeNameLabel.text="Name: \(nameImage)"
        imageSizeLabel.text="Size: \(size)"
    }
}

