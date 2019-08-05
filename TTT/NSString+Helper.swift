//
//  NSString+Helper.swift
//  TTT
//
//  Created by zhouyantong on 2019/8/3.
//  Copyright © 2019 zhouyantong. All rights reserved.
//

import Foundation
import UIKit
extension String {
    static func isBlankString(string:Any?) -> Bool {
        if string == nil || string is NSNull {
            return true
        }
        if string is String {
            let tempStr = string as! String
            if tempStr.trimmingCharacters(in: NSCharacterSet.whitespaces).count == 0 {
                return true
            }
        }
        return false
    }
    
    func calculateStringSize(font:UIFont,constrainedToSize:CGSize,lineBreakMode:NSLineBreakMode) -> CGSize {
        let string = self as NSString
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.lineBreakMode = lineBreakMode
        return string.boundingRect(with: constrainedToSize, options: [.usesLineFragmentOrigin,.usesFontLeading], attributes: [NSAttributedString.Key.font : font,NSAttributedString.Key.paragraphStyle:paragraphStyle], context: nil).size
    }
    
}
