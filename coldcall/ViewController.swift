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
    var current_idx: Int = 100
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        var idx: Int = Int(arc4random_uniform(5))
        
        while idx == self.current_idx {
            idx = Int(arc4random_uniform(5))
        }
        
        titleLabel.text = self.name_array[idx]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

