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
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        
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
        let cell:UserTableViewCell = self.tableView.dequeueReusableCell( withIdentifier: cellReuseIdentifier ) as! UserTableViewCell
        
        //- edit cell characteristics
        cell.backgroundColor = UIColor.clear
        
        //TODO Take details from server about message thread and add to cell
        
        return cell
    }
    
    //----- UIButton methods
    
    @IBAction func btnDoneClicked(_ sender: Any)
    {
        //TODO implement btndone clicked
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
