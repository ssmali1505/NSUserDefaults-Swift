//
//  ViewController.swift
//  NSUserDefaults Swift
//
//  Created by Sandeep on 1/17/15.
//  Copyright (c) 2015 Sandeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        UserDefault_Test()
        
    }
    
    
    func UserDefault_Test(){
    
        
        
        //Custom object save test
        var user1 = UserModel(name: "Sandeep",id:1)
        DataManager.setData(user1, key:"user1")
        
        var user2 = UserModel(name: "Vijay",id:2)
        DataManager.setData(user2, key:"user2")
        
        var user3 = UserModel(name: "Tom",id:3)
        DataManager.setData(user3, key:"user3")
        
       
         println("\n\nCustom Object Print")
        //Custom object retrive test
        var userObj1 : UserModel = DataManager.getData("user1") as UserModel
        
        println(userObj1)
        
        var userObj2 : UserModel = DataManager.getData("user2") as UserModel
        
        println(userObj2)
        
        var userObj3 : UserModel = DataManager.getData("user3") as UserModel
        
        println(userObj3)
        
        
        //Save array of custom objects
        var userList: Array = [UserModel]()
        userList.append(user1)
        userList.append(user2)
        userList.append(user3)
        DataManager.setData(userList, key: "userlist")
        
        //Retrive array of custom objects
        
        var userListObjects: AnyObject = DataManager.getData("userlist")
       
        var twDataArray = (userListObjects as NSArray) as Array
        
        println("\n\nArray Print")
        
        for obj in twDataArray {
            println(obj)
        }
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

