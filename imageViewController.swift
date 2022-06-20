//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Fulya Sarıyar on 20.06.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        
    }
    

    

}
