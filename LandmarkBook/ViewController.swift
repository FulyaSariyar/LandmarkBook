//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Fulya Sarıyar on 20.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self //seld = C# 'daki this anahtar kelimesi.
        tableView.dataSource = self
        
        
       // UIImage(named: "stonehenge")
        var landmarkNames = [String] () //dizi tanımladım
        landmarkNames.append("colosseum")
        landmarkNames.append("greatwall")
        landmarkNames.append("kremlin")
        landmarkNames.append("stonehenge")
        landmarkNames.append("Tajmahal")
        
        var landmarkImages = [UIImage]() //UIImage dizisi tanımladım
        landmarkImages.append(UIImage(named:"colosseum")!)
        landmarkImages.append(UIImage(named:"greatwall")!)
        landmarkImages.append(UIImage(named:"kremlin")!)
        landmarkImages.append(UIImage(named:"stonehenge")!)
        landmarkImages.append(UIImage(named:"Tajmahal")!)
        
        //diziler sıralı çalışır bu yüzden iki diziyi aynı sırada ekledim.
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

