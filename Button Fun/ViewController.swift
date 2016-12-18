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
            
            let location = sender.location(in: view)
            let xInView = location.x
            let yInView = location.y

            let coloredSquare = UIView()
            coloredSquare.backgroundColor = UIColor.blue
            coloredSquare.frame = CGRect(x: xInView, y: yInView, width: 22, height: 22)
            self.view.addSubview(coloredSquare)

            
        }
        
    }
}

