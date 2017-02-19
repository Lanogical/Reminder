//
//  Colors.swift
//  Reminder
//
//  Created by Ben Koska on 1/22/17.
//  Copyright © 2017 Ben Koska. All rights reserved.
//

import UIKit

class red{
    static let fifty = UIColor(red:1.00, green:0.92, blue:0.93, alpha:1.0)
    static let onehundered = UIColor(red:1.00, green:0.80, blue:0.82, alpha:1.0)
    static let twohundered = UIColor(red:0.94, green:0.60, blue:0.60, alpha:1.0)
    static let threehundered = UIColor(red:0.90, green:0.45, blue:0.45, alpha:1.0)
    static let fourhundered = UIColor(red:0.94, green:0.33, blue:0.31, alpha:1.0)
    static let fivehundered = UIColor(red:0.96, green:0.26, blue:0.21, alpha:1.0)
    static let sixhundered = UIColor(red:0.90, green:0.22, blue:0.21, alpha:1.0)
    static let sevenhundered = UIColor(red:0.83, green:0.18, blue:0.18, alpha:1.0)
    static let eighthundered = UIColor(red:0.78, green:0.16, blue:0.16, alpha:1.0)
    static let ninehundered = UIColor(red:0.72, green:0.11, blue:0.11, alpha:1.0)
    static let aonehundered = UIColor(red:1.00, green:0.54, blue:0.50, alpha:1.0)
    static let atwohundered = UIColor(red:1.00, green:0.32, blue:0.32, alpha:1.0)
    static let afourhundered = UIColor(red:1.00, green:0.09, blue:0.27, alpha:1.0)
    static let asevenhundered = UIColor(red:0.84, green:0.00, blue:0.00, alpha:1.0)
}

class colors{
    static func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
