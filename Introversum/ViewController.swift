//
//  ViewController.swift
//  Introversum
//
//  Created by Laboratorio UNAM-Apple 13 on 23/11/18.
//  Copyright © 2018 Juann0708. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class ViewController: UIViewController {

    
    @IBOutlet var ssecciones: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /* @IBAction func loginWithFacebook(_ sender: Any) {
        //1.
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email"], from: self) { (result, error) in
            
            //2.
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            //2.
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to get access token")
                return
            }
            
            //3.
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            //4.
            Auth.auth().signIn(with: credential, completion: { (user, error) in
                
                //5.
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    let alertController = UIAlertController(title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okayAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                }
                
                //6.
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") {
                    UIApplication.shared.keyWindow?.rootViewController = viewController
                    self.dismiss(animated: true, completion: nil)
                }
                
            })
            
        }
        
    }
 
 */

    @IBAction func seleccion(_ sender: UIButton) {
        ssecciones.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                            button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })

        }
    }
    
    @IBAction func sselected(_ sender: UIButton) {
    }


}

