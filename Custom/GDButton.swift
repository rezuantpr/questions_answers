//
//  GDButton.swift
//  GetItDone
//
//  Created by  Rezuan on 01/10/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit


class GDButton: UIButton {
    
    var title: String!
    var type: ButtonOptions!
    var raduis: CGFloat!
    
    init(title: String = "Button text", frame: CGRect = .zero, type: ButtonOptions = .roundedText, radius: CGFloat = 20) {
        super.init(frame: frame)
        
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        
        self.title = title
        
        self.type = type
        
        
        self.raduis = radius
        
        switch type {
        case .roundedText:
            
            self.roundedText()
            
            break
        case .squareIcon:
            self.squareIcon()
            
            break
        default:
            break
        }
        
        
        self.phaseTwo()
        
    }
    
    func phaseTwo() {
        self.backgroundColor = .white
        
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.systemFont(ofSize: 16)
        }
        
       
    }
    func squareIcon() {
        setImage(UIImage(named: "add"), for: .normal)
    }
    
    func roundedText() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.grayZero, for: .normal)
        self.layer.cornerRadius = raduis
    } 
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
