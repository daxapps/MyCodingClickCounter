//
//  ViewController.swift
//  MyCodingClickCounter
//
//  Created by Jason Crawford on 9/14/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        //Button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: #selector(ViewController.changeBackground), forControlEvents: UIControlEvents.TouchUpInside)
        
        let button2 = UIButton()
        button2.frame = CGRectMake(200, 250, 60, 60)
        button2.setTitle("Click", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: #selector(ViewController.changeBackground2), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        
    }

    func decrementCount() {
        self.count -= 1
        self.label2.text = "\(self.count)"
        
    }
    
    func changeBackground() {
        self.view.layer.backgroundColor = UIColor.cyanColor().CGColor
    }
    
    func changeBackground2() {
        self.view.layer.backgroundColor = UIColor.magentaColor().CGColor
    }

}

