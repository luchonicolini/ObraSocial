//
//  File.swift
//  WelcomeIosfa
//
//  Created by luciano on 18/03/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit

class InicioTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    var imagen: Imagen! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        img.image = UIImage(named: imagen.FileName)
        img.layer.cornerRadius = 8.0
        img.layer.masksToBounds = true
        
        label1.text = imagen.authorName
        label2.text =  imagen.description
        
        
    }
    
}
