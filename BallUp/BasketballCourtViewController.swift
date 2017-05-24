//
//  BasketballCourtViewController.swift
//  BallUp
//
//  Created by Student on 5/14/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class BasketballCourtViewController: UIViewController {
    @IBOutlet weak var court: UIImageView!
    
    var myPlayerInfo = PlayerInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

        court.image = UIImage(named: "courtZones")
        court.isUserInteractionEnabled = true
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func madeShotLong(_ sender: Any) {
        
        if((sender as AnyObject).state == .ended)
        {
            let spot = (sender as AnyObject).location(in: self.view)
            let imageName = "circle"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: spot.x, y: spot.y, width: 25, height: 25)
            view.addSubview(imageView)
            
        }
        else if((sender as AnyObject).state == .began)
        {
            myPlayerInfo.fgm = myPlayerInfo.fgm + 1
        }
    }


    @IBAction func missedShotTap(_ sender: Any) {
        
        myPlayerInfo.fga += 1
        let spot = (sender as AnyObject).location(in: self.view)
        let imageName = "x"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: spot.x, y: spot.y, width: 25, height: 25)
        view.addSubview(imageView)
    }
   
   
    @IBAction func blockedShot(_ sender: Any) {
        
        myPlayerInfo.blocks += 1
    }
    
    @IBAction func reboundedBall(_ sender: Any) {
        
        myPlayerInfo.rebounds += 1
    }
    
    @IBAction func stealsBall(_ sender: Any) {
        
        myPlayerInfo.steals += 1
    }
    

    @IBAction func assistsShot(_ sender: Any) {

        myPlayerInfo.assists += 1
    }
    
    @IBAction func turnoversBall(_ sender: Any) {
        
        myPlayerInfo.tov += 1
    }
    
    @IBAction func ftMissed(_ sender: Any) {
        
        myPlayerInfo.ftmissed += 1
    }
    
    @IBAction func ftIn(_ sender: Any) {
        
        myPlayerInfo.ftm += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "statsSegue")
        {
            let statsFinal: StatsViewController = segue.destination as! StatsViewController
            
            statsFinal.myPlayerInfo1 = myPlayerInfo
            
        }
        
        
    }
    
    
}
