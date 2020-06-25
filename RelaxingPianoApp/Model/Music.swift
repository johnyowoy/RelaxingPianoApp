//
//  Music.swift
//  RelaxingPianoApp
//
//  Created by John on 2020/6/25.
//  Copyright © 2020 JinHauHuang. All rights reserved.
//

import Foundation

class Music {
    var song: String
    var performer: String
    var time: String
    var image: String
    
    init(song: String, performer: String, time: String, image: String) {
        self.song = song
        self.performer = performer
        self.time = time
        self.image = image
    }
    
    convenience init() {
        self.init(song: "", performer: "", time: "", image: "")
    }
}
