//
//  ViewController.swift
//  Button Fun
//
//  Created by Mark Rabins on 12/17/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let theSelector : Selector = #selector(ViewController.tapGesture)
        let tapGesture = UITapGestureRecognizer(target: self, action: theSelector)
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
        
    }
    
    //TapGestureRecognizer
    func tapGesture(sender: UITapGestureRecognizer) {
        
        if sender.state == .ended {
            let theLayer = CALayer()
            
            let location = sender.location(in: inputView)
            theLayer.hitTest(location)
            
            
            let xInView = location.x
            let yInView = location.y

            
            theLayer.masksToBounds = true
            
            theLayer.bounds = CGRect(x: xInView, y: yInView, width: 40.0, height: 40.0)
            
            
            
            
            
            let red = CGFloat(drand48())
            let green = CGFloat(drand48())
            let blue = CGFloat(drand48())
            
            theLayer.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor
            
            theLayer.setNeedsDisplay()
            
            self.view.layer.addSublayer(theLayer)
            
            print(theLayer.position.x)
            print(theLayer.position.y)
            
            
        }
    }
    
}
