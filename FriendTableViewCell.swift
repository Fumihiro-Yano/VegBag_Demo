//
//  FriendTableViewCell.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/29.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//


import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
