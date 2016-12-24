//
//  SquareView.swift
//  Button Fun
//
//  Created by Mark Rabins on 12/17/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class SquareView: UIView {
    
    override class var layerClass: AnyClass {
        return CATiledLayer.self
    }
    
    required init?(coder aDecoder: NSCoder ) {
        super.init(coder: aDecoder)
        guard let layer = self.layer as? CATiledLayer else { return nil }
        layer.tileSize = CGSize(width: 40.0, height: 40.0)

    }
    
    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        context?.setFillColor(red: red, green: green, blue: blue, alpha: 1.0)
        context?.fill(rect)
    }
}







