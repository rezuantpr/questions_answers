//
//  GDLabel.swift
//  GetItDone
//
//  Created by  Rezuan on 26/09/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class GDLabel: UILabel {
    init(title: String = "default text", color: UIColor = .white, size: CGFloat = 20, frame: CGRect = .zero, textAlign: NSTextAlignment = .left) {
        super.init(frame: frame)
        
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        checkIfAutoLayout()
        self.layer.cornerRadius = 0
        self.text = title
        self.textColor = color
      //  self.font = UIFont.init(name: "Raleway-v4020-SemiBold", size: 100)
        self.font = UIFont.systemFont(ofSize: size)
        self.textAlignment = textAlign
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
