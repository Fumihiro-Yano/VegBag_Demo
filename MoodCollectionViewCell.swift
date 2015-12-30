//
//  MoodCollectionViewCell.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import UIKit

class MoodCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cellmainImageView: UIImageView!
    @IBOutlet weak var goodImageView: UIImageView!
    
    @IBOutlet weak var commentImageView: UIImageView!
    
    var textLabel : UILabel?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
