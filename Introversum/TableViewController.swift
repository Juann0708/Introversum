//
//  TableViewController.swift
//  Introversum
//
//  Created by MacBook Pro 15 Retina on 12/2/18.
//  Copyright © 2018 Juann0708. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

struct postStruct {
    let title : String!
    let message : String!
}

class TableViewController: UITableViewController {
    
    var posts = [postStruct]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let databaseRef = Database.database().reference()
        databaseRef.child("Posts").queryOrderedByKey().observe(.childAdded, with: {
                snapshot in
            let snapshotValue = snapshot.value as? NSDictionary
            let title = snapshotValue!["title"] as? String
            let message = snapshotValue!["message"] as? String
            
            self.posts.insert(postStruct(title: title, message: message ) , at: 0)
            self.tableView.reloadData()
            
        })
    
        
        
        
        
        post()
    }
    
    
    
    
    
    
    func post(){
        let title = "title"
        let message = "message"
        
        let post : [String : AnyObject] = ["title" : title as AnyObject,
                                           "message" : message as AnyObject]
    
    
    let databaseRef = Database.database().reference()
    
        databaseRef.child("Posts").childByAutoId().setValue(post)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let label1 = cell?.viewWithTag(1) as! UILabel
        label1.text = posts[indexPath.row].title
        let label2 = cell?.viewWithTag(2) as! UILabel
        label2.text = posts[indexPath.row].message
        
        return cell!
    }

   

}
