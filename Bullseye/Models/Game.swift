//
//  Game.swift
//  Bullseye
//
//  Created by Mary Musallam on 8/26/24.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1..<100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
       return 999
    }
}


