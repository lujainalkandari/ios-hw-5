//
//  Player.swift
//  MarioParty
//
//  Created by Lujain Alkandari on 7/4/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation
struct player {
    var name : String
    
    func bgName() -> String {
        return name + "BG"
    }
    
    func musicName() -> String {
        return name + ".WAV"
    }
    
}
let players : [player] =
    [player(name:"Mario"),
     player(name:"Bowser"),
     player(name:"Luigi"),
     player(name:"Peach"),
     player(name:"Yoshi"),
     
]
