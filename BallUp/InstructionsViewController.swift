//
//  InstructionsViewController.swift
//  BallUp
//
//  Created by Student on 5/16/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    @IBOutlet weak var name: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.image = UIImage(named: "pattern")

    }
}
