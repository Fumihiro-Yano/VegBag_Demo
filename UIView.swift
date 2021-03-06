//
//  UIView.swift
//  HorizontalScrolling
//
//  Created by 矢野史洋 on 2015/11/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import UIKit

extension UIView {
    class func loadNib<T: UIView>(viewType: T.Type) -> T {
        let className = String.className(viewType)
        return NSBundle(forClass: viewType).loadNibNamed(className, owner: nil, options: nil).first as! T
    }
    
    class func loadNib() -> Self {
        return loadNib(self)
    }
}
