//
//  ViewController.swift
//  RollTheDice
//
//  Created by Zhe Chen on 7/18/17.
//  Copyright © 2017 Zhe Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var rollTheDice: UILabel!
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
   
    let numbers = ["0", "1", "2", "3", "4", "5", "6"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.green.cgColor, UIColor.black.cgColor]
        newLayer.frame = view.frame
        
        view.layer.insertSublayer(newLayer, at: 0)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        let randomNumber = Int(arc4random_uniform(UInt32(numbers.count)))
        
        rollLabel.text = "\(numbers[randomNumber])"
        
        
        
    }
    
    
    
}

