//
//  protocol.swift
//  GetItDone
//
//  Created by  Rezuan on 01/10/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import Foundation

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol DONavigationBarDelegate {
    func backButtonHandler()
    
    func forwardButtonHandler()
    
    func selectHideOrOpen() -> Bool
}
