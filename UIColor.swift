//
//  UIColor.swift
//  UIColor extension iOS Helper
//
//  Created by Jorge Benavides on 3/3/15.
//  Copyright (c) 2015 PEWPEW. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hex:Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }
    
    convenience init(string:String) {
        let string = string.replacingOccurrences(of: "#", with: "", options: NSString.CompareOptions.literal, range: nil)
        let index   = string.characters.index(string.startIndex, offsetBy: 0)
        let hex     = string.substring(from: index)
        let scanner = Scanner(string: hex)
        var hexValue: CUnsignedLongLong = 0
        
        if scanner.scanHexInt64(&hexValue) {
            switch (hex.characters.count) {
            case 3:
                self.init(red:CGFloat((hexValue & 0xF00) >> 8)/15.0, green:CGFloat((hexValue & 0x0F0) >> 4)/15.0, blue:CGFloat(hexValue & 0x00F)/15.0, alpha:1.0)
            case 4:
                self.init(red:CGFloat((hexValue & 0xF000) >> 12)/15.0, green:CGFloat((hexValue & 0x0F00) >> 8)/15.0, blue:CGFloat((hexValue & 0x00F0) >> 4)/15.0, alpha:CGFloat(hexValue & 0x000F)/15.0)
            case 6:
                self.init(red:CGFloat((hexValue & 0xFF0000) >> 16)/255.0, green:CGFloat((hexValue & 0x00FF00) >> 8)/255.0, blue:CGFloat(hexValue & 0x0000FF)/255.0, alpha:1.0)
            case 8:
                self.init(red:CGFloat((hexValue & 0xFF000000) >> 24)/255.0, green: CGFloat((hexValue & 0x00FF0000) >> 16)/255.0, blue: CGFloat((hexValue & 0x0000FF00) >> 8)/255.0, alpha:CGFloat(hexValue & 0x000000FF)/255.0)
            default:
                print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
                self.init(red:0.0, green: 0.0, blue: 0.0, alpha:0.0)
            }
        } else {
            print("Scan hex error")
            self.init(red:0.0, green: 0.0, blue: 0.0, alpha:0.0)
        }
    }
}
