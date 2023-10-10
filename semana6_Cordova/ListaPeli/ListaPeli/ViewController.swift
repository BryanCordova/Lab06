//
//  ViewController.swift
//  ListaPeli
//
//  Created by MAC46 on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet var tableView: UITableView!
    
    let myData = [("celulares", "Descripción 1"), ("auriculares", "Descripción 2"), ("televisores", "Descripción 3"), ("smartwatch", "Descripción 4"), ("samsung", "Descripción 5"), ("morenillo", "Descripción 6"), ("music cristiana", "Descripción 7"), ("developer", "Descripción 8"), ("hack", "Descripción 9"), ("software", "Descripción 10")]



    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }

      //TableView funcs...
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dtableviewcell", for: indexPath) as! DTableViewCell
        
        cell.myLavel.text = myData[indexPath.row].0 // Título de la imagen
        cell.myDescripcion.text = myData[indexPath.row].1 // Descripción de la imagen
        cell.myImageView.image = UIImage(named: myData[indexPath.row].0) // Cargar la imagen correspondiente
        
        return cell
    }


    
}

