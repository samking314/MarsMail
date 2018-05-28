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

    //--- get UITableViewCell reuse identifier
    let cellReuseIdentifier = "messageListCell"
    
    //--- get header buttons
    @IBOutlet weak var btnEditProfile: UIButton!
    @IBOutlet weak var btnComposeMessage: UIButton!
    
    //--- get test data
    let numOfRows = 3
    let messageNameList = ["Mars Mission 1 Team", "Mars Mission 1.1", "Craig's Birthday Party"]
    let messageInfoList = ["hey guys... we're out of water...", "good thing we have water 😎", "did anyone get a cake???"]
    let messageLastWroteList = ["5m", "2d", "1w"]
    let messageImageNames = ["marsmission1.jpg","marsmission.jpg","happybday.png"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none //you can also do .none   
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //----- UITableView Methods
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numOfRows //THIS IS FOR TESTING
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //TODO Setup call to another storyboard that has list of messages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:MessageListTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! MessageListTableViewCell
        
        //- setup cell characteristics
        cell.backgroundColor = UIColor.clear
        
        //TODO Take details from server about message thread and add to cell
        
        //for now just using test data, then use test data in data manager then use real server data
        if (indexPath.row < messageInfoList.count &&
            indexPath.row < messageNameList.count &&
            indexPath.row < messageLastWroteList.count &&
            indexPath.row < messageImageNames.count)
        {
            cell.lblThreadName.text = messageNameList[indexPath.row]
            cell.lblThreadRecentMessage.text = messageInfoList[indexPath.row]
            cell.lblThreadRecentTime.text = messageLastWroteList[indexPath.row]
            cell.imageThread.image = UIImage(named: messageImageNames[indexPath.row])
            
            //TODO decide whether to put this in async call or nah
            cell.imageThread.layer.borderWidth = 1.0
            cell.imageThread.layer.masksToBounds = false
            cell.imageThread.layer.cornerRadius = cell.imageThread.frame.size.height / 2
            cell.imageThread.clipsToBounds = true
        }
        
        
        return cell
    }
    
    //----- UIButton Methods
    
    @IBAction func btnComposeMessageClicked()
    {
        let storyboard = UIStoryboard(name: "ComposeMessage", bundle: nil)
        let editProfVC = storyboard.instantiateViewController(withIdentifier: "ComposeMessageViewController") as! ComposeMessageViewController
        self.present(editProfVC, animated: true, completion: nil)
    }
    
    @IBAction func btnEditditProfileClicked()
    {
        let storyboard = UIStoryboard(name: "EditProfile", bundle: nil)
        let editProfVC = storyboard.instantiateViewController(withIdentifier: "EditProfileViewController") as! EditProfileViewController
        self.present(editProfVC, animated: true, completion: nil)
    }

}

