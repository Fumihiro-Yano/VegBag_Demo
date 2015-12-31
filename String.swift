//
//  String.swift
//  HorizontalScrolling
//
//  Created by 矢野史洋 on 2015/11/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import Foundation

extension String {
    static func className(aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).componentsSeparatedByString(".").last!
    }
    
    func substring(from: Int) -> String {
        return self.substringFromIndex(self.startIndex.advancedBy(from))
    }
    
    var length: Int {
        return self.characters.count
    }
}