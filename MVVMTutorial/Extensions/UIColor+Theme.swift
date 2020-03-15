//
//  UIColor+Theme.swift
//  MVVMTutorial
//
//  Created by 서재훈 on 2020/03/15.
//  Copyright © 2020 서재훈. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: Private
    
    // MARK: Private
    fileprivate static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    fileprivate static func rgb(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
        return rgba(r, g, b, 1.0)
    }
    
    // MARK: Public
    
    static let borderColor = rgb(254, 250, 236)
    static let backgroundColor = rgb(67, 73, 110)
    static let scoreColor = rgb(255, 193, 45)
    static let textColor = UIColor.white
    static let playerBackgroundColor = rgb(84, 77, 126)
    static let brightPlayerBackgroundColor = rgba(101, 88, 156, 0.5)
}
