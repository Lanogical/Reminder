//
//  LocalData.swift
//  Reminder
//
//  Created by Ben Koska on 2/4/17.
//  Copyright © 2017 TheTechKids. All rights reserved.
//

import Foundation

class LocalData {
    
    //Save Token
    static var token: String? {
        get{
            if let returnValue = UserDefaults.standard.object(forKey: "token") as? String {
                return returnValue
            }else{
                return nil
            }
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "token")
            UserDefaults.standard.synchronize()
        }
    }
    
    static var apps: [String] {
        get{
            if let returnValue = UserDefaults.standard.object(forKey: "apps") as? [String]{
                return returnValue
            }else{
                return []
            }
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "apps")
            UserDefaults.standard.synchronize()
        }
    }
    
    static var resturants: [String] {
        get{
            if let returnValue = UserDefaults.standard.object(forKey: "resturants") as? [String]{
                return returnValue
            }else{
                return []
            }
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "resturants")
            UserDefaults.standard.synchronize()
        }
    }
    
    static var books: [String] {
        get{
            if let returnValue = UserDefaults.standard.object(forKey: "books") as? [String]{
                return returnValue
            }else{
                return []
            }
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "books")
            UserDefaults.standard.synchronize()
        }
    }
    
    static var shopping: [String] {
        get{
            if let returnValue = UserDefaults.standard.object(forKey: "shopping") as? [String]{
                return returnValue
            }else{
                return []
            }
        }
        
        set{
            UserDefaults.standard.set(newValue, forKey: "shopping")
            UserDefaults.standard.synchronize()
        }
    }
}
