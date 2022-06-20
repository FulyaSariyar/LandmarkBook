//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Fulya Sarıyar on 20.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var landmarkNames = [String] ()
    var landmarkImages = [UIImage]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self //seld = C# 'daki this anahtar kelimesi.
        tableView.dataSource = self
        
        //LandMarkBook Data
        
       // UIImage(named: "stonehenge")
         //dizi tanımladım
        landmarkNames.append("Colosseum")
        landmarkNames.append("Geatwall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Sonehenge")
        landmarkNames.append("Tajmahal")
         
        
         //UIImage dizisi tanımladım // Assets klasörünün içerisindeki isimler ile aynı olmalıdır.
        landmarkImages.append(UIImage(named:"colosseum")!)
        landmarkImages.append(UIImage(named:"greatwall")!)
        landmarkImages.append(UIImage(named:"kremlin")!)
        landmarkImages.append(UIImage(named:"stonehenge")!)
        landmarkImages.append(UIImage(named:"Tajmahal")!)
        
        //diziler sıralı çalışır bu yüzden iki diziyi aynı sırada ekledim.
        
        
    }
    //hücrelerde ne göstereceğiz.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row] //diziyi sıralı sekilde gösterir.
        return cell
    }
    //hücrelerde göstereceğimiz şeyi kaç tane göstereceğiz.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
}

