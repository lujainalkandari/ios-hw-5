//
//  PlayersDetailVC.swift
//  MarioParty
//
//  Created by Lujain Alkandari on 7/5/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation
class PlayersDetailVC: UIViewController {
   var selectedPlayer = player(name:"Mario")
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var playerSoundEffect: AVAudioPlayer?
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var starsImageView: UIImageView!
    
    
    
      override func viewDidLoad() {
          super.viewDidLoad()
        nameLabel.text =  selectedPlayer.name
        imageView.image = UIImage (named: selectedPlayer.bgName())
        
        backgroundImageView.image = UIImage (named: selectedPlayer.bgName())
        
        
      }

    
    
  
    @IBAction func randomizeStars(_ sender: Any) {
var stars = ["Star1","Star2","Star3","Star4","Star5"]
             let randomStar = stars.randomElement()!
             starsImageView.image = UIImage(named: randomStar)
    }
    
  
    
    @IBAction func playMusic(_ sender: Any) {
    }
    
    


}
