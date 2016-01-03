//
//  AlubumTableViewCell.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2016/01/03.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class AlubumTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var alubumThumbnailImageView: UIImageView!
    
    @IBOutlet weak var alubumNameLabel: UILabel!

    @IBOutlet weak var alubumCountLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

