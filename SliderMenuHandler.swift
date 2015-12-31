//
//  SliderMenuHandler.swift
//  HorizontalScrolling
//
//  Created by 矢野史洋 on 2015/12/13.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import Foundation
import UIKit

enum SliderMenuTableIndexType: Int{
    case Home = 0
    case Like = 1
    case Exhibit = 2
    case Purchase = 3
    case Setting = 4
    case Guide = 5
    case Inquiry = 6
}

class SliderMenuHandler {
    var type: SliderMenuTableIndexType
    
    init(type: SliderMenuTableIndexType) {
        self.type = type
    }
    
    func getViewController() -> UIViewController {
        switch self.type {
        case .Home:
            let homeViewController = HomeViewController()
            return homeViewController
        case .Like:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        case .Exhibit:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        case .Purchase:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        case .Setting:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        case .Guide:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        case .Inquiry:
            let testTableViewController = TestTableViewController()
            return testTableViewController
        }
        
    }
 }