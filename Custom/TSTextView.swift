//
//  TSTextView.swift
//  TellSell
//
//  Created by  Rezuan on 31/12/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class TSTextView: UITextView {

    init(text: String = "") {
        super.init(frame: .zero, textContainer: nil)
 
        
        checkIfAutoLayout()
        
        self.textAlignment = NSTextAlignment.justified
        self.text = text
        self.font = UIFont(name: self.font?.fontName ?? "Chalkboard", size: 30)
        self.textColor = UIColor.grayZero
        self.backgroundColor = UIColor.white
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
