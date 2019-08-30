//
//  CGRectEx.swift
//  PassionArt
//
//  Created by vmio vmio on 8/30/19.
//  Copyright © 2019 PassionArt. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    
    var rightBottom: CGPoint {
        get {
            return CGPoint(x: origin.x + width, y: origin.y + height)
        }
    }
    
    var center: CGPoint {
        get {
            return origin.plus(rightBottom).mul(0.5)
        }
    }
    
}
