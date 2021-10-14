//
//  ViewController.swift
//  showimage2
//
//  Created by hajer . on 08/03/1443 AH.
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


    @IBAction func firestButtonpresed(_ sender: UIButton) {
        print(#function)
        showImageinCentralImageview(Name:"rainbow")
        updateLabelTex (NameImage:"rainbow", size:"1000x1024")
    }
    
    
    @IBAction func secondbuttonpresssed(_ sender: UIButton) {
        print(#function)
        showImageinCentralImageview(Name:"tree")
        updateLabelTex(NameImage:"tree" , size:"1000x1024")
    }
    
    
    @IBAction func threrdButttonpressed(_ sender: UIButton) {
        showImageinCentralImageview(Name:"building")
        updateLabelTex(NameImage:"building" , size:"1000x1024")    }
    
    
    
    
    func showImageinCentralImageview(Name:String){
        let Image = UIImage(named:Name)
        central_Image_View.image = Image
    }
    func updateLabelTex(NameImage:String,size:String){
        imageNameLabel.text = "Name:\(NameImage)"
        imageSizeLabel.text = "size:\(size)"
    }
}



