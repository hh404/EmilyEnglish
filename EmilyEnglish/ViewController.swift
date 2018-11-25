//
//  ViewController.swift
//  EmilyEnglish
//
//  Created by hans on 2018/11/25.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit
import SwiftySound

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let fileURL = Bundle.main.url(forResource: "1", withExtension: "mp3")
        Sound.play(url: fileURL!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

