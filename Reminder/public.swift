//
//  public.swift
//  Reminder
//
//  Created by Ben Koska on 1/28/17.
//  Copyright © 2017 Ben Koska. All rights reserved.
//

import Foundation

enum ScreenType{
    case App
    case Resturant
    case Book
    case Shop
}

class publicvars{
    
    
    static var current: ScreenType = .App
    
    static var popUpTitle = ""
    static var popUpDesc = ""
    static var popUpPlace = ""
    static var screenTitle = ""
    
    static var apps = [String]()
    
    static func addApp(_ app:String){
        apps.append(app)
    }
    
    static var resturants = [String]()
    
    static func addResturant(_ resturant:String){
        resturants.append(resturant)
    }
    
    static var books = [String]()
    
    static func addBook(_ book:String){
        books.append(book)
    }
    
    static var shops = [String]()
    
    static func addShop(_ shop:String){
        shops.append(shop)
    }
    
    static func setTitle(_ screen: ScreenType){
        
        if screen == .Book {
            screenTitle = "Books"
        }
        
        if screen == .Resturant {
            screenTitle = "Resturants"
        }
        
        if screen == .App {
            screenTitle = "Apps"
        }
        
        if screen == .Shop{
            screenTitle = "Shopping List"
        }
    }
    
    static func setPopUpTitle(_ screen: ScreenType){
        
        if screen == .Book {
            popUpTitle = "Add a Book"
        }
        
        if screen == .App {
            popUpTitle = "Add a App"
        }
        
        if screen == .Resturant {
            popUpTitle = "Add a Resturant"
        }
        
        if screen == .Shop {
            popUpTitle = "Add to Shopping list"
        }
        
    }
    
    static func setPopUpPlace(_ screen: ScreenType){
        
        if screen == .App {
            popUpPlace = "App name"
        }
        
        if screen == .Book {
            popUpPlace = "Book name or ISBN"
            //TODO: Add ISBN
        }
        
        if screen == .Resturant {
            popUpPlace = "Resturant name"
        }
        
        if screen == .Shop {
            popUpPlace = "Item name"
        }
    }
    
    static func setPopUpDesc(_ screen: ScreenType){
        
        if screen == .App {
            popUpDesc = "Add a App to your list"
        }
        
        if screen == .Book {
            popUpDesc = "Add a Book to your reading list"
        }
        
        if screen == .Resturant {
            popUpDesc = "Add a Resturant to remember"
        }
        
        if screen == .Shop {
            popUpDesc = "Add item to Shopping list"
        }
        
    }
    
}
