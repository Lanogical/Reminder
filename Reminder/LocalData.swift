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
}
