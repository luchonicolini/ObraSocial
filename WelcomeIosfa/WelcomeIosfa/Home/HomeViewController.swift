//
//  ViewController.swift
//  WelcomeIosfa
//
//  Created by luciano on 15/03/2019.
//  Copyright © 2019 nicolini.com. All rights reserved.
//

import UIKit
import AVKit

class HomeViewController: UIViewController {
    
    var imge: [Imagen] = Imagen.fetchimg()
    
   

    //Global
    @IBOutlet weak var deviceimageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var chapterCollectionView: UICollectionView!
    
    @IBOutlet weak var heroView: UIView!
   
  
    

    
   
    //Video
    @IBAction func playbuttonTapped(_ sender: Any) {
        let url = Bundle.main.path(forResource: "beneficios", ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: url!)
        let player = AVPlayer(url: videoPathURL)
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.delegate = self
        deviceimageView.alpha = 0
        UIView.animate(withDuration: 1) {
            self.deviceimageView.alpha = 1
            
        
        }
        
    }
    
   // Passing Data(CollectionView)
    //ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeToSection" {
            let toViewController = segue.destination as! SectionViewController
            let indexPath = sender as! IndexPath
            let section = sections[indexPath.row]
            toViewController.section = section
            toViewController.sections = sections
            toViewController.indexPath = indexPath
        }
       // if segue.identifier == "ViewController" {
            //let toView = segue.destination as! ViewController
       }
    
}

//MARCK:ScrollView
extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY < 0  {
            heroView.transform = CGAffineTransform(translationX: 0, y: offsetY)
    
        }
    }
}


        
        
//MARCK: TabelViewController
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imge.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! InicioTableViewCell
        let imagen = imge[indexPath.row]
        cell.imagen = imagen
        
        return cell
    }
    
    //Passing Data (TABLEVIEW)
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        }
    }
    

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, 0, 50, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }


//MARCK: CollectionView
extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"sectionCell", for: indexPath) as! SectionCollectionViewCell
        let section = sections[indexPath.row]
       
        cell.coverImageView.image = UIImage(named: section["image"]!)
        //cell.layer.transform = animateCell(cellFrame: cell.frame)
        
        
        return cell
    }
        //Passing Data(COLLECTIONVIEW)
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier:"HomeToSection", sender:
        indexPath)
        
        
    }
    
}
    






