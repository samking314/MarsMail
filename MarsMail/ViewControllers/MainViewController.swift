//
//  ViewController.swift
//  MarsMail
//
//  Created by Sam King on 3/21/18.
//  Copyright © 2018 Sam King. All rights reserved.
//

import UIKit


class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //--- get tableview
    @IBOutlet weak var tableView: UITableView!

    //--- setup its reuse identifier
    let cellReuseIdentifier = "messageCell"
    
    //--- setup header buttons
    @IBOutlet weak var btnEditProfile: UIButton!
    @IBOutlet weak var btnComposeMessage: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //----- UITableView Methods
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1;
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
        let cell:MessageTableViewCell = self.tableView.dequeueReusableCell( withIdentifier: cellReuseIdentifier ) as! MessageTableViewCell
        
        
        return cell
    }
    
    //----- UIButton Methods
    
    @IBAction func btnComposeMessageClicked()
    {
        //TODO Setup screen to allow user to create a group message thread
    }
    
    @IBAction func btnEditditProfileClicked()
    {
        //TODO Setup screen to allow user to edit their profile
    }

}

