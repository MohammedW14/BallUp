//
//  ViewController.swift
//  BallUp
//
//  Created by Student on 5/14/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
self.navigationItem.setHidesBackButton(true, animated: false)
        
        backgroundImage.image = UIImage(named: "HomeScreen")
        
    }

}

