//
//  ComposeMessage.swift
//  MarsMail
//
//  Created by Sam King on 5/21/18.
//  Copyright © 2018 MarsMail. All rights reserved.
//

import UIKit

class ComposeMessageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //--- get tableview
    @IBOutlet weak var tableView: UITableView!
    
    //--- setup UITableViewCell reuse identifier
    let cellReuseIdentifier = "userCell"
    
    //--- get UIButtons
    @IBOutlet weak var btnDone: UIButton!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var btnFilterEarth: UIButton!
    @IBOutlet weak var btnFilterMars: UIButton!
    @IBOutlet weak var btnFilterBoth: UIButton!
    
    //--- get TextFields
    @IBOutlet weak var txtSearch: UITextField!
    
    //--- get UILabels
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserInfo: UILabel!
    
    //--- get test data
    let numOfRows = 3
    let userNameList = ["roboCOP", "curiosity", "Craig"]
    let userTrustList = ["89%", "2%", "55%"]
    let userInfoList = ["12t, 5v", "2f, 1EM", "50EM"]
    let userProfPicList = ["marsmission1.jpg","marsmission.jpg","happybday.png"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none //you can also do .none   
        
        self.setupView()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func setupView()
    {
        //TODO use info from DB to populate the uitableview
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
        
        //- edit cell characteristics
        cell.backgroundColor = UIColor.clear
        
        //TODO Take details from server about message thread and add to cell
        
        //for now just use test data
        if (indexPath.row < userNameList.count &&
            indexPath.row < userTrustList.count &&
            indexPath.row < userInfoList.count &&
            indexPath.row < userProfPicList.count)
        {
            cell.lblUsername.text = userNameList[indexPath.row] + " " + userTrustList[indexPath.row]
            cell.lblUserInfo.text = userInfoList[indexPath.row]
            cell.imageProfPic.image = UIImage(named: userProfPicList[indexPath.row])
            
            //TODO decide whether to put this in async call or nah
            cell.imageProfPic.layer.borderWidth = 1.0
            cell.imageProfPic.layer.masksToBounds = false
            cell.imageProfPic.layer.cornerRadius = cell.imageProfPic.frame.size.height / 2
            cell.imageProfPic.clipsToBounds = true
        }
        
        return cell
    }
    
    //----- UIButton methods
    
    @IBAction func btnDoneClicked(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnFiltersClicked(_ sedner: Any)
    {
        //TODO implement btnfilter clicked
    }
    
    @IBAction func btnSearchClicked(_ sender:Any)
    {
        //TODO implement btnsearch clicked
    }

}
