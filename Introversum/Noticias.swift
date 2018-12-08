//
//  Noticias.swift
//  Introversum
//
//  Created by MacBook Pro 15 Retina on 12/2/18.
//  Copyright © 2018 Juann0708. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class Noticias: UIViewController {

    var ref: DatabaseReference!
    
    ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageCollection: UICollectionView!
    
    
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
