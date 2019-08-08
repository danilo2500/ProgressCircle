//
//  ViewController.swift
//  ProgressCircle
//
//  Created by danilo2500 on 08/08/2019.
//  Copyright (c) 2019 danilo2500. All rights reserved.
//

import UIKit
import ProgressCircle

class ViewController: UIViewController {

    @IBOutlet weak var progressCircle: ProgressCircle!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressCircle.changePercentage(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

