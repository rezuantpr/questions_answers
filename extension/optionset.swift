//
//  Option.swift
//  GetItDone
//
//  Created by  Rezuan on 01/10/2018.
//  Copyright © 2018  Rezuan. All rights reserved.
//

import Foundation
import UIKit

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon = ButtonOptions(rawValue: 1 << 1)
    
    
    
}
