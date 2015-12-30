//
//  BaseCollectionViewController.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2015/12/30.
//  Copyright © 2015年 矢野史洋. All rights reserved.
//

import UIKit

let reuseIdentifier = "MoodCollectionViewCell"

class BaseCollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.registerNib(UINib(nibName: "MoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 100
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : MoodCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MoodCollectionViewCell
    
        // Configure the cell
        cell.priceLabel?.text = "¥1000"
        let cellmainImage = UIImage(named: "Vegetables.jpg")
        let goodImage = UIImage(named: "good.png")
        let commentImage = UIImage(named: "comment.png")
        cell.cellmainImageView.image = cellmainImage
        cell.goodImageView.image = goodImage
        cell.commentImageView.image = commentImage
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
}
