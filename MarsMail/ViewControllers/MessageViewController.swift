//
//  MessageViewController.swift
//  MarsMail
//
//  Created by Sam King on 5/27/18.
//  Copyright © 2018 MarsMail. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    //--- get tableview
    @IBOutlet weak var tableView: UITableView!
    
    //--- get UIButtons
    @IBOutlet weak var btnDone: UIButton!
    @IBOutlet weak var btnSend: UIButton!
    
    //--- get UITextView
    @IBOutlet weak var txtViewMessage: UITextView!
    
    //--- get UITableViewCell reuse identifier
    let cellReuseIdentifier = "messageCell"
    
    //--- get test data
    let numOfRows = 3
    let messages = ["heyya","wazzup?","i'm a human"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    //----- UITableView Methods
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numOfRows; //this is ONLY for testing
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //TODO Setup call to another storyboard that has list of messages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UserTableViewCell = self.tableView.dequeueReusableCell( withIdentifier: cellReuseIdentifier ) as! UserTableViewCell
        
        
        return cell
    }
    
}
