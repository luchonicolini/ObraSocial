//
//  File.swift
//  WelcomeIosfa
//
//  Created by luciano on 18/03/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import Foundation

struct Imagen
{
    let authorName: String
    let description: String
    let FileName: String
    
    static func fetchimg() -> [Imagen] {
        let v1 = Imagen(authorName: "SEMUESTRA",description: "+ Conozca las ofertas de esta zona", FileName: "v1")
        
        let v2 = Imagen(authorName: "Tracy Noah",description: "This is an example of local video.", FileName: "v2")
        
        let v3 = Imagen(authorName: "Tracy Noah",description: "This is an example of local video.", FileName: "v3")
        let v4 = Imagen(authorName: "VISTA 4",description: "DESCRIPCON 4", FileName: "v4")
        
        
        
        return [v1,v2,v3,v4]
    }

}
