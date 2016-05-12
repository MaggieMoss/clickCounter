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
    var label: UILabel!
    var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        // label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        // second label
        var secondLabel = UILabel()
        secondLabel.frame = CGRectMake(150, 350, 60, 60)
        secondLabel.text = "0"
        
        self.view.addSubview(label)
        self.view.addSubview(secondLabel)
        self.label = label
        self.secondLabel = secondLabel
        // button
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // decrement
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(150, 450, 60, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.cyanColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"

    }
    func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
    }
}

