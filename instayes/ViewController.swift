//
//  ViewController.swift
//  instayes
//
//  Created by Ammad on 17/07/2022.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

class ViewController: UIViewController {
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var newuser: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sigin(_ sender: Any) {
        if let email = email.text , let password = password.text
                {
                    Auth.auth().signIn(withEmail: email, password:password) { (authresultdata, error) in
                        if let err = error
                        {
                            print( err.localizedDescription)
                        }
                        else
                        {
                            print( "Success")
                        }
                    }
                }
    
    
    }
    @IBAction func myuser(_ sender: Any) {
        
        if let email = email.text , let password = password.text
                {
                    Auth.auth().createUser(withEmail: email, password: password) { (resultdata, error) in
                        if let err = error
                        {
                            print( err.localizedDescription)
                        }
                        else
                        {
                            print( "Account Created")
                            
                        }
                    }
                }
                
    }
    
}

