//
//  GDGradient.swift
//  GetItDone
//
//  Created by  Rezuan on 26/09/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class GDGradient: UIView {
    
 
    var colors: [CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    
    //  #3A78D5
    //  #64E4FF
    
    var hexColors: [CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
            
        }
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = hexColors
            layer.locations = [0.0, 1.2]
        }
        
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
