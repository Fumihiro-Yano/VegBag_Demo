//
//
//  TestViewController.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//


import UIKit

class TestViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
