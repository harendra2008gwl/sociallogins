//
//  ViewController.swift
//  Social Logins
//
//  Created by Harendra Sharma on 24/07/18.
//  Copyright © 2018 Harendra Sharma. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FacebookCore




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func FBLoginClicked(_ sender: UIButton) {
        print("FBLoginClicked")
       
        let FBLoginManager = LoginManager()
        
        FBLoginManager.logIn(permissions: ["public_profile", "email"], from: self, handler: { (result, error) in
            
            if (result?.isCancelled)! {
                
                /**
                 whether the login was cancelled by the user.
                 */
                
            } else {
                if result?.token != nil {
                    
                    print("FB Token:\(String(describing: result?.token?.tokenString))") // send it to your backend server. you can also use graph api here to get more details i.e. first name, last name, friends etc.
                    
                    print("Granted Permissions:\(String(describing: result?.grantedPermissions))")
                    
                    print("Declined Permissions:\(String(describing: result?.declinedPermissions))")
                    
                }
            }
        })
    }
    
    
    // For any query please post your comments.....
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

