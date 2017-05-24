//
//  SecondViewController.swift
//  BallUp
//
//  Created by Student on 5/20/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var fgmLabel: UILabel!
    @IBOutlet weak var fgaLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var ftmLabel: UILabel!
    @IBOutlet weak var ftmissedLabel: UILabel!
    @IBOutlet weak var FTPercentLabel: UILabel!
    @IBOutlet weak var reboundsLabel: UILabel!
    @IBOutlet weak var assistsLabel: UILabel!
    @IBOutlet weak var blocksLabel: UILabel!
    @IBOutlet weak var stealsLabel: UILabel!
    @IBOutlet weak var tovLabel: UILabel!
    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    var PlayerInfo2: PlayerInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fgmLabel.text = "\(Int(PlayerInfo2.fgm))"
        let holder = Int(PlayerInfo2.fgm) + PlayerInfo2.fga
        fgaLabel.text = "\(holder)"
        
        var percentHolder: Double
        
        if(holder == 0)
        {
            percentLabel.text = "0.00%"
            percentHolder = 0.00
        }
        else
        {
            percentHolder = Double(PlayerInfo2.fgm) / Double(holder)
            percentHolder = Double(round(percentHolder * 100000)/1000)
            percentLabel.text = "\(percentHolder)" + "%"
        }
        ftmLabel.text = "\(PlayerInfo2.ftm)"
        let FTHolder = PlayerInfo2.ftm + PlayerInfo2.ftmissed
        ftmissedLabel.text = "\(FTHolder)"
        
        var FTPercentHolder: Double
        
        if(FTHolder == 0)
        {
            FTPercentLabel.text = "0.00%"
            FTPercentHolder = 0.00
        }
        else
        {
            FTPercentHolder = Double(PlayerInfo2.ftm) / Double(FTHolder)
            FTPercentHolder = Double(round(FTPercentHolder * 100000)/1000)
            FTPercentLabel.text = "\(FTPercentHolder)" + "%"
        }
        
        reboundsLabel.text = "\(PlayerInfo2.rebounds)"
        assistsLabel.text = "\(PlayerInfo2.assists)"
        blocksLabel.text = "\(PlayerInfo2.blocks)"
        stealsLabel.text = "\(PlayerInfo2.steals)"
        tovLabel.text = "\(PlayerInfo2.tov)"
        
        
        if(holder > 3 && percentHolder < 40)
        {
            tipsLabel.text = "You need to work on making more shots!"
        }
        else if(FTHolder > 3 && FTPercentHolder < 80)
        {
            tipsLabel.text = "You need to work on making more free throws!"
        }
        else if(holder > 3 && percentHolder >= 40)
        {
            tipsLabel.text = "You shoot wonderfully!"
        }
        else if(FTPercentHolder >= 80 && percentHolder >= 40)
        {
            tipsLabel.text = "You are a great player, keep it up!"
            
        }
        else
        {
            tipsLabel.text = "Not enough data for a tip yet!"
        }

        
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        PlayerInfo2.name = nameTextField.text!
        
    }
    
    


}
