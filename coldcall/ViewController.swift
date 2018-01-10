//
//  ViewController.swift
//  coldcall
//
//  Created by Omar Ihmoda on 1/10/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let name_array: [String] = ["Bryant", "Courtney", "Jimmy", "Ryota", "John", "Dave"]
    
    let colors = ["red","green","blue","purple","orange","black"]
    
    
    var current_idx: Int = 100
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        numberLabel.isHidden = false
        var idx: Int = Int(arc4random_uniform(5))
        
        while idx == self.current_idx {
            idx = Int(arc4random_uniform(5))
        }
        
        titleLabel.text = self.name_array[idx]
        self.numberLabel.text = String(idx + 1)
        
        if idx+1 == 1 || idx+1 == 2 {
            self.numberLabel.textColor = UIColor.red
        } else if idx+1 == 3 || idx+1 == 4 {
            self.numberLabel.textColor = UIColor.orange
        } else {
            self.numberLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.numberLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

