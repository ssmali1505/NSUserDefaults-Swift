//
//  DataManager.swift
//  NSUserDefaults Swift
//
//  Created by Sandeep on 1/17/15.
//  Copyright (c) 2015 Sandeep. All rights reserved.
//

import Foundation

class DataManager : NSObject {
    
    class func setData(obj: AnyObject, key:String) {
        var ud = NSUserDefaults.standardUserDefaults()
        ud.setObject(NSKeyedArchiver.archivedDataWithRootObject(obj), forKey: key)
        ud.synchronize()
    }
    
    class func getData(key:String) -> AnyObject {
        var ud = NSUserDefaults.standardUserDefaults()
        if let data = ud.objectForKey(key) as? NSData {
            var dataObject: AnyObject? = NSKeyedUnarchiver.unarchiveObjectWithData(data)
            return dataObject!
        }
        return 0
    }
    
}
