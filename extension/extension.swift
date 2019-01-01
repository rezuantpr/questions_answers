//
//  Extension.swift
//  GetItDone
//
//  Created by  Rezuan on 26/09/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

extension UIColor {
    
    static  var blueZero: UIColor {
        return UIColor.init(rgb: 0xDEE7FF)
    }
    static var blueOne: UIColor {
        return UIColor.init(rgb: 0xDFE4F2 )
    }
    
    static var grayZero: UIColor {
        return UIColor.init(rgb: 0x989B9B)
    }
    
    static var grayOne: UIColor {
        return UIColor.init(rgb: 0x424242)
    }
    
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
        

    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        
        )
    }
    
  
}

extension UIView {
    func checkIfAutoLayout() {
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func animatedView(transform: CGAffineTransform, duration: Double) {
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.transform = transform
        }, completion: nil)
    }
}
