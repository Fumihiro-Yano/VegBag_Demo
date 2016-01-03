//
//  AlubumViewController.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2016/01/03.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit
import Photos

class AlubumViewController: UITableViewController {
    
    var photoNameArray : [String] = ["woman5.jpg", "man1.jpg", "woman1.jpg", "man2.jpg", "man3.jpg", "woman2.jpg", "man4.jpg", "man5.jpg", "woman3.jpg", "woman4.jpg", "man6.jpg", "man7.jpg", "man8.jpg"]
    
    // アルバム.
    var photsAlbum: NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PHPhotoLibrary.Authorization()
        photsAlbum = NSMutableArray()
        // フォトアプリの中にあるアルバムを検索する.
        let list = PHAssetCollection.fetchAssetCollectionsWithType(PHAssetCollectionType.Album, subtype: PHAssetCollectionSubtype.Any, options: nil)
        
        list.enumerateObjectsUsingBlock { (album, index, isStop) -> Void in
            if let album = album as? PHCollection { // PHCollectionにキャスト
                if let localizedTitle = album.localizedTitle { // localizedTitleはnilの可能性がある
                    self.photsAlbum.addObject(localizedTitle)
                }
            }
        }
    
        self.tableView.registerNib(UINib(nibName: "AlubumTableViewCell", bundle: nil), forCellReuseIdentifier: "AlubumTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photsAlbum.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : AlubumTableViewCell = tableView.dequeueReusableCellWithIdentifier("AlubumTableViewCell") as! AlubumTableViewCell
        
        // Configure the cell...
        cell.alubumNameLabel.text = "\(photsAlbum[indexPath.row])"
        cell.alubumCountLabel.text = "100"
        cell.alubumThumbnailImageView.image = UIImage(named: photoNameArray[indexPath.row])
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
}