//
//  GDCheckBox.swift
//  GetItDone
//
//  Created by  Rezuan on 12/10/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class GDCheckBox: UIButton {
    
    var id: Int?
    var toggled: Bool? {
        didSet {
            if let toggled = toggled {
                UIView.animate(withDuration: 0.2) {
                    if toggled {
                        self.backgroundColor = .green
                        self.setImage(UIImage(named: "done"), for: .normal)
                    } else {
                        self.backgroundColor = .clear
                        self.setImage(UIImage(), for: .normal)
                    }

                }
            }
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        checkIfAutoLayout()
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayZero.cgColor
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
