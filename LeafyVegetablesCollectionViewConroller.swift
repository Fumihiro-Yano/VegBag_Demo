//
//  LeafyVegetablesCollectionViewConroller.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/30.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import UIKit

class LeafyVegetablesCollectionViewConroller :  BaseCollectionViewController {
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : MoodCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MoodCollectionViewCell
        
        // Configure the cell
        cell.priceLabel?.text = "¥1000"
        let cellmainImage = UIImage(named: "mood6.jpg")
        let goodImage = UIImage(named: "good.png")
        let commentImage = UIImage(named: "comment.png")
        cell.cellmainImageView.image = cellmainImage
        cell.goodImageView.image = goodImage
        cell.commentImageView.image = commentImage
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
}
