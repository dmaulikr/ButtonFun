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
                
//                
//                let pointLayer = CALayer(layer: view.layer.presentation()!).hitTest(pointView!)
                
                
                
                let x = pointView?.x
                let y = pointView?.y
                
                
                
                
                let theLayer = CALayer()
                let red = CGFloat(drand48())
                let green = CGFloat(drand48())
                let blue = CGFloat(drand48())
                
                theLayer.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor
                
                //                theLayer.frame.size = CGSize (width: 20.0, height: 20.0)
                
                theLayer.frame = CGRect(x: x!, y: y!, width: 20.0, height: 20.0)
                
                
                //                pointLayer?.addSublayer(theLayer)
                
                
                
                
                
                self.view.layer.addSublayer(theLayer)
                
                
                
                
                
            }
        }
        
    }
    
}
