//
//  ViewTableViewCell.swift
//  WelcomeIosfa
//
//  Created by luciano on 03/04/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit

class ViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TabelPhoto: UIImageView!
    @IBOutlet weak var TabelLabel: UILabel!
    
    var imagen: Imagen! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        TabelPhoto.image = UIImage(named: imagen.FileName)
        TabelPhoto.layer.cornerRadius = 8.0
        TabelPhoto.layer.masksToBounds = true
        
        TabelLabel.text = imagen.authorName
        
        
     
        
    }



}
