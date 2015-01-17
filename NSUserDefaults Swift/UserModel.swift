//
//  UserModel.swift
//  NSUserDefaults Swift
//
//  Created by Sandeep on 1/17/15.
//  Copyright (c) 2015 Sandeep. All rights reserved.
//

import Foundation

class UserModel : NSObject, NSCoding {
    
    var UserName: String?
    var UserID: Int?
    
    override var description : String {
        return "User ID : \(UserID), User Name : \(UserName)\n"
    }
    
     init(name: String,id: Int) {
            self.UserName = name
            self.UserID = id
    }
    
    required init(coder aDecoder: NSCoder) {
         self.UserName = aDecoder.decodeObjectForKey("userName") as? String
         self.UserID = aDecoder.decodeObjectForKey("UserID") as? Int
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
            aCoder.encodeObject(self.UserName, forKey: "userName")
        aCoder.encodeObject(self.UserID, forKey: "UserID")
    }
    
}
