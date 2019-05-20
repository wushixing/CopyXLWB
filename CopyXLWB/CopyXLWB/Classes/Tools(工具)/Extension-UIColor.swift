//
//  Extension-UIColor.swift
//  CopyXLWB
//
//  Created by WuShixing on 2019/5/19.
//  Copyright © 2019 WuShixing. All rights reserved.
//

import UIKit

extension UIColor {
    
    var randomColor: UIColor {
        let r = CGFloat(arc4random()%255)
        let g = CGFloat(arc4random()%255)
        let b = CGFloat(arc4random()%255)
        
        return UIColor(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}
