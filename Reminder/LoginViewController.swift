//
//  LoginViewController.swift
//  Reminder
//
//  Created by Ben Koska on 2/4/17.
//  Copyright © 2017 TheTechKids. All rights reserved.
//

import UIKit
import Firebase
import Material

class LoginViewController: UIViewController {


    @IBOutlet var emailField: TextField!
    @IBOutlet var passwordField: ErrorTextField!
    @IBOutlet var LoginBtn: FlatButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let token = LocalData.token {
            print("tok!=nil")
           FIRAuth.auth()?.signIn(withCustomToken: token, completion: { (user, error) in
            if error != nil {
                print("Error!=nil")
                let board = UIStoryboard(name: "Main",bundle: nil)
                let controller = board.instantiateViewController(withIdentifier: "init")
                self.present(controller,animated: true,completion: nil)
            }
           })
        }
        //Add Email Icon
        emailField.isClearIconButtonEnabled = true
        
        let leftView = UIImageView()
        leftView.image = Icon.email
        
        emailField.leftView = leftView
        emailField.leftViewMode = .always
        
        
        //Add Password Icon
        passwordField.isClearIconButtonEnabled = true
        
        let leftView2 = UIImageView()
        leftView2.image = UIImage(named: "ic_lock")?.withRenderingMode(.alwaysTemplate)
        
        passwordField.leftView = leftView2
        passwordField.leftViewMode = .always
        
        
        emailField.text = "hello@world.com"
        passwordField.text = "1234567"
        passwordField.isSecureTextEntry = true
        
        if FIRAuth.auth()?.currentUser != nil {
            let board = UIStoryboard(name: "Main",bundle: nil)
            let controller = board.instantiateViewController(withIdentifier: "init")
            self.present(controller,animated: true,completion: nil)
        }
        
        LoginBtn.title = "Login";
        LoginBtn.titleColor = Color.white;
        LoginBtn.tintColor = Color.blue;
        
        passwordField.placeholder = "Password"
        
        //Email Field
        
        emailField.placeholder = "Email"
    }
    
    
    func LoginClicked(_ sender: AnyObject!) {
        FIRAuth.auth()!.createUser(withEmail: emailField.text!,
                                   password: passwordField.text!) { user, error in
                                    if error == nil {
                                        FIRAuth.auth()!.signIn(withEmail: self.emailField.text!, password: self.passwordField.text!)

                                        let board = UIStoryboard(name: "Main",bundle: nil)
                                        let controller = board.instantiateViewController(withIdentifier: "init")
                                        self.present(controller,animated: true,completion: nil)
                                        

                                    }else{
                                        if self.passwordField.text!.characters.count < 6{
                                            self.passwordField.detail = "Minimum lengh: 6"
                                            self.passwordField.isErrorRevealed = true
                                        }
                                    }
        }
        
        FIRAuth.auth()!.signIn(withEmail: self.emailField.text!, password: self.passwordField.text!)
        
        if let user = FIRAuth.auth()?.currentUser {
            user.getTokenWithCompletion({ (token, error) in
                if let token = token, error == nil {
                    LocalData.token = token
                }
            })
            let board = UIStoryboard(name: "Main",bundle: nil)
            let controller = board.instantiateViewController(withIdentifier: "init")
            self.present(controller,animated: true,completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
