//
//  SectionViewController.swift
//  WelcomeIosfa
//
//  Created by luciano on 22/03/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var labeltitle: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
//    //backHome
//    @IBAction func backHome(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
//
//    }
    
    var section: [String: String]!
    var sections: [[String: String]]!
    var indexPath: IndexPath!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImageView.image = UIImage(named: section["image"]!)
        labeltitle.text = section["titlelabel"]
        bodyLabel.text = section["body"]
        
        
    }

}
