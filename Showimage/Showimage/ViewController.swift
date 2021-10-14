//
//  ViewController.swift
//  Showimage
//
//  Created by Shorouq AlAnzi on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var nameImage = String()
    var sizeImage = String()
    
    @IBOutlet weak var CentralImageView: UIImageView!
    @IBOutlet weak var imageNameLabel: UILabel!
    @IBOutlet weak var imageSizeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func FrisrButton(_ sender: UIButton) {
        UpdateImageView(image: #imageLiteral(resourceName: "rainbow"))
          updateLabelsTex(nameImage: "rainbow", sizeImage: "1000x1024")
    }
    @IBAction func SecondButton(_ sender: UIButton) {
        
        UpdateImageView(image: #imageLiteral(resourceName: "building"))
         updateLabelsTex(nameImage: "building-1", sizeImage: "1000x1024")
    }
    @IBAction func ThridButton(_ sender: UIButton) {
        
        UpdateImageView(image: #imageLiteral(resourceName: "tree"))
        updateLabelsTex(nameImage: "tree", sizeImage: "1000x1024")
    }

func  UpdateImageView(image:UIImage){
    CentralImageView.image = image
}
    
    func updateLabelsTex(nameImage :String , sizeImage : String) {
        imageNameLabel.text = "Name :\(nameImage)"
        imageSizeLabel.text = "Size : \(sizeImage)"
}
}
