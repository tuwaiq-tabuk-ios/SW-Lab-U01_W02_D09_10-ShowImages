//
//  ViewController.swift
//  showImages
//
//  Created by azooz alhwiti on 07/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centralImageView: UIImageView!
    
    @IBOutlet weak var imageNameLabel: UILabel!
    @IBOutlet weak var imageSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func firstView(_ sender: Any) {
        updateImageInCentralImageView(name: "rainbow")
        updateLabelsText(name: "rainbow")
    }
    @IBAction func secondView(_ sender: Any) {
        updateImageInCentralImageView(name: "building")
        updateLabelsText(name: "building")
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        updateImageInCentralImageView(name: "tree")
        updateLabelsText(name: "tree")
    }
    
    
    func updateImageInCentralImageView(name:String) {
        let image = UIImage(named: name)
        centralImageView.image = image
        
    }
    
    func updateLabelsText(name:String) {
        let image = UIImage(named: name)
        imageNameLabel.text = "Name: " + name
        imageSizeLabel.text = "Size: \(image!.size.width )x\(image!.size.height)"
    }
}
