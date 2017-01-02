//
//  ViewController.swift
//  Convert_TWD97_to_WGS84
//
//  Created by james on 02/01/2017.
//  Copyright © 2017 james. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testTWD97XY = CGPoint(x: 187038.98, y: 2517874.81)
        let reult = ConvertCoordinate.TWD097_to_GWS84(point:testTWD97XY)
        print ("reult\(reult)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

