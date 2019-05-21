//
//  ViewController.swift
//  WelcomeIosfa
//
//  Created by luciano on 25/03/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var photo: [Imagen] = Imagen.fetchimg()
    


    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "CellDos", for: indexPath) as! ViewTableViewCell
        let imagen = photo[indexPath.row]
        cell.imagen = imagen
        
        return cell
    }
    


    }



