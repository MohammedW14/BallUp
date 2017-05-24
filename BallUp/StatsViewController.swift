//
//  StatsViewController.swift
//  BallUp
//
//  Created by Student on 5/17/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var fgmadeLabel: UILabel!
    @IBOutlet weak var fgaLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var ftmadeLabel: UILabel!
    @IBOutlet weak var ftaLabel: UILabel!
    @IBOutlet weak var ftpercentLabel: UILabel!
    @IBOutlet weak var reboundsLabel: UILabel!
    @IBOutlet weak var assistsLabel: UILabel!
    @IBOutlet weak var blocksLabel: UILabel!
    @IBOutlet weak var stealsLabel: UILabel!
    @IBOutlet weak var turnoversLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    var myPlayerInfo1: PlayerInfo!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fgmadeLabel.text = "\(Int(myPlayerInfo1.fgm))"
        let holder = Int(myPlayerInfo1.fgm) + myPlayerInfo1.fga
        fgaLabel.text = "\(holder)"
        
        var percentHolder: Double
        
        if(holder == 0)
        {
            percentLabel.text = "0.00%"
            percentHolder = 0.00
        }
        else
        {
            percentHolder = Double(myPlayerInfo1.fgm) / Double(holder)
            percentHolder = Double(round(percentHolder * 100000)/1000)
            percentLabel.text = "\(percentHolder)" + "%"
        }
        ftmadeLabel.text = "\(myPlayerInfo1.ftm)"
        let FTHolder = myPlayerInfo1.ftm + myPlayerInfo1.ftmissed
        ftaLabel.text = "\(FTHolder)"
        
        var FTPercentHolder: Double
        
        if(FTHolder == 0)
        {
            ftpercentLabel.text = "0.00%"
            FTPercentHolder = 0.00
        }
        else
        {
            FTPercentHolder = Double(myPlayerInfo1.ftm) / Double(FTHolder)
            FTPercentHolder = Double(round(FTPercentHolder * 100000)/1000)
            ftpercentLabel.text = "\(FTPercentHolder)" + "%"
        }
        
        reboundsLabel.text = "\(myPlayerInfo1.rebounds)"
        assistsLabel.text = "\(myPlayerInfo1.assists)"
        blocksLabel.text = "\(myPlayerInfo1.blocks)"
        stealsLabel.text = "\(myPlayerInfo1.steals)"
        turnoversLabel.text = "\(myPlayerInfo1.tov)"
        
        
        if(holder > 3 && percentHolder < 40)
        {
            tipLabel.text = "You need to work on making more shots!"
        }
        else if(FTHolder > 3 && FTPercentHolder < 80)
        {
            tipLabel.text = "You need to work on making more free throws!"
        }
        else if(holder > 3 && percentHolder >= 40)
        {
            tipLabel.text = "You shoot wonderfully!"
        }
        else if(FTPercentHolder >= 80 && percentHolder >= 40)
        {
            tipLabel.text = "You are a great player, keep it up!"
            
        }
        else
        {
            tipLabel.text = "Not enough data for a tip yet!"
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "saveSegue")
        {
            let saveFinal: SaveViewController = segue.destination as! SaveViewController
            
            saveFinal.myPlayerInfo3 = myPlayerInfo1!
            var i = 1
            saveFinal.i = i
            
        }
        
        
    }

        
    }
