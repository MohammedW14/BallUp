//
//  PlayerInfo.swift
//  BallUp
//
//  Created by Student on 5/20/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit
import Foundation

class PlayerInfo: NSObject {

    
    var rebounds = 0
    var tov = 0
    var steals = 0
    var blocks = 0
    var assists = 0
    var fgm = 0.0
    var fga = 0
    var ftm = 0
    var ftmissed = 0
    var date = ""
    var name = ""
    
    
    override init()
    {
        var rebounds = 0
        var tov = 0
        var steals = 0
        var blocks = 0
        var assists = 0
        var fgm = 0.0
        var fga = 0
        var ftm = 0
        var ftmissed = 0
        var date = ""
        var name = ""

    }
    
    
    init(r:Int, t: Int, s: Int, b: Int, a: Int, fg: Double, fgaa: Int, ftma: Int, ftmisseds: Int, d: String, n: String)
    {
        rebounds = r
        tov = t
        steals = s
        blocks = b
        assists = a
        fgm = fg
        fga = fgaa
        ftm = ftma
        ftmissed = ftmisseds
        date = d
        name = n
    }
    
    init(n: String, d:String)
    {
        name = n
        date = d

    }
}
