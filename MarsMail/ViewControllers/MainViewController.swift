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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.register(MessageTableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
        //code here
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:MessageTableViewCell = self.tableView.dequeueReusableCell( withIdentifier: cellReuseIdentifier ) as! MessageTableViewCell
        
        cell.myView?.backgroundColor = UIColor.black
        cell.lblThreadName?.text = "The Mars Group"
        cell.lblThreadRecentMessage?.text = "guys.. where's the water supply??"
        cell.lblThreadRecentTime?.text = "5m ago"
        
        return cell
    }
    

}

