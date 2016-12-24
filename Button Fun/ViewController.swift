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
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.count > 0 {
            for touch in touches {
                let point = touch.location(in: touch.view)
                let pointView = touch.view?.convert(point, to: self.view)
                
                print("I am the point \(touch.location(in: touch.view))")
                print("point view is \(pointView)")
                
                let red = CGFloat(drand48())
                let green = CGFloat(drand48())
                let blue = CGFloat(drand48())


                
                touch.view?.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }
        }
        
    }
    
}
