//
//  PHPhotoLibrary.swift
//  VegBag_Demo
//
//  Created by 矢野史洋 on 2016/01/03.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import Photos


extension PHPhotoLibrary {
    
    //ユーザーに許可を促す.
    class func Authorization(){
        
        PHPhotoLibrary.requestAuthorization { (status) -> Void in
            
            switch(status){
            case .Authorized:
                print("Authorized")
                
            case .Denied:
                print("Denied")
                
            case .NotDetermined:
                print("NotDetermined")
                
            case .Restricted:
                print("Restricted")
            }
            
        }
    }
}