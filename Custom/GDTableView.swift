//
//  GDTableView.swift
//  GetItDone
//
//  Created by  Rezuan on 11/10/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import UIKit

class GDTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        checkIfAutoLayout()
        
        backgroundColor = .clear
        separatorStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
