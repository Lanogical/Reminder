//
//  MainController.swift
//  Reminder
//
//  Created by Ben Koska on 1/27/17.
//  Copyright © 2017 Ben Koska. All rights reserved.
//

import UIKit
import Material

class MainController: UIViewController {

    
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var appsBtn: RaisedButton!
    @IBOutlet var resturantBtn: RaisedButton!
    @IBOutlet var shoppingBtn: RaisedButton!
    @IBOutlet var myView: View!
    @IBOutlet var booksBtn: RaisedButton!
    
    @IBAction func logoutClick(_ sender: Any) {
        LocalData.token = nil
        
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "login")
        self.present(controller,animated: true,completion: nil)
        
    }
    
    @IBAction func AppClick(_ sender: Any) {
        publicvars.setTitle(.App)
        publicvars.setPopUpTitle(.App)
        publicvars.setPopUpDesc(.App)
        publicvars.setPopUpPlace(.App)
        publicvars.current = .App
        
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)
    }
    @IBAction func RestClick(_ sender: Any) {
        
        publicvars.setTitle(.Resturant)
        publicvars.setPopUpTitle(.Resturant)
        publicvars.setPopUpDesc(.Resturant)
        publicvars.setPopUpPlace(.Resturant)
        publicvars.current = .Resturant
        
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)

        
    }
    
    @IBAction func BookClick(_ sender: Any) {
        
        publicvars.setTitle(.Book)
        publicvars.setPopUpTitle(.Book)
        publicvars.setPopUpDesc(.Book)
        publicvars.setPopUpPlace(.Book)
        publicvars.current = .Book
        
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)

    }
    
    
    @IBAction func ShopClick(_ sender: Any) {
        
        publicvars.setTitle(.Shop)
        publicvars.setPopUpTitle(.Shop)
        publicvars.setPopUpDesc(.Shop)
        publicvars.setPopUpPlace(.Shop)
        publicvars.current = .Shop

        
        let board = UIStoryboard(name: "Main",bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "AppMaster")
        self.present(controller,animated: true,completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = Color.grey.lighten5
        
        //Shopping Button
        shoppingBtn.backgroundColor = Color.blue.darken3
        shoppingBtn.titleColor = Color.white

        shoppingBtn.title = "Shopping"
        
        //Apps Button
        appsBtn.backgroundColor = Color.blue.darken3
        appsBtn.titleColor = Color.white
        appsBtn.title = "Apps"
        
        //Resturant Button
        resturantBtn.backgroundColor = Color.blue.darken3
        resturantBtn.titleColor = Color.white
        resturantBtn.cornerRadius = 0.0
        resturantBtn.title = "Resturant"
        
        //Books Button
        booksBtn.backgroundColor = Color.blue.darken3
        booksBtn.titleColor = Color.white
        booksBtn.cornerRadius = 0.0
        booksBtn.title = "Books"
        
        //Stack View
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
