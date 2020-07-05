//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation
var selectedPlayer = players(name: "Mario")

    @IBOutlet weak var PlayerImageView: UIImageView!
     
    var PlayerSoundEffect: AVAudioPlayer?
    var backgroundMusic: AVAudioPlayer?
    
    override func viewDidLoad() {
          
        super.viewDidLoad()
        nameLabel.text = selectedPlayer.bgname
        imageView.image = UIImage(named: selectedPlayer.bgname)
        backgroundImageView.image = UIImage(named: selectedPlayer.bgName())
      
       
    }
    
     
        
        
        
        func playBackgroundMusic (musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

            
            
        do {
           backgroundMusic = try AVAudioPlayer (contentsOf: url)
            backgroundMusic?.play()
        }catch{
            
            }
    }
        
        
    
    func PlayMusic (musicName: String){
    let path = Bundle.main.path(forResource: musicName, ofType:nil)!
    let url = URL(fileURLWithPath: path)

    do {
       PlayerSoundEffect = try AVAudioPlayer(contentsOf: url)
        PlayerSoundEffect?.play()
       
    } catch {
    
    }
    }
   
        
        
       

    @IBAction func randomPlayer(_ sender: Any) {
    let randomPlayer = players.randomElement()!
PlayerImageView.image = UIImage(named:randomPlayer.name)
 
PlayBackgroundMusic(musicName: randomPlayer.musicName())
        selectedPlayer = randomPlayer
        
    
    }
    

}

