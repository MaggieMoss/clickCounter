//
//  ViewController.swift
//  clickCounter
//
//  Created by Maggie Moss on 2016-05-10.
//  Copyright © 2016 Maggie Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
    }
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
       
    }
    @IBAction func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
}

