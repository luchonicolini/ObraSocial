//
//  File.swift
//  WelcomeIosfa
//
//  Created by luciano on 07/04/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit

class Background
{
    var name: String?
    var images: [UIImage]?
    var description: String?
    
    init(name: String, images: [UIImage],description: String)
    {
        self.name = name
        self.images = images
        self.description = description
    }
    
    class func fetchShoes() -> [Background]
    {
        var shoes = [Background]()
        
        // 1
        var shoe1Images = [UIImage]()
        for i in 1...8 {
            shoe1Images.append(UIImage(named: "s\(i)")!)
        }
        let shoe1 = Background(name: "NIKE AIR MAX 1 ULTRA 2.0 FLYKNIT", images: shoe1Images, description: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's Shoe updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.")
        shoes.append(shoe1)
        
        // 2
        var shoe2Images = [UIImage]()
        for i in 1...7 {
            shoe2Images.append(UIImage(named: "t\(i)")!)
        }
        let shoe2 = Background(name: "NIKE FREE RN FLYKNIT 2017", images: shoe2Images, description: "The Nike Free RN Flyknit 2017 Men's Running Shoe brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.")
        shoes.append(shoe2)

        return shoes
    }
}
