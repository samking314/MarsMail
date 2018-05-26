//
//  EditProfileViewController.swift
//  MarsMail
//
//  Created by Sam King on 5/20/18.
//  Copyright © 2018 MarsMail. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController
{
    //--- get buttons
    @IBOutlet weak var btnTextVisible: UIButton!
    @IBOutlet weak var btnFilesVisible: UIButton!
    @IBOutlet weak var btnVideosVisible: UIButton!
    @IBOutlet weak var btnMarsEmojisVisible: UIButton!
    @IBOutlet weak var btnDBSizeVisible: UIButton!
    @IBOutlet weak var btnRaiseTrust: UIButton!
    @IBOutlet weak var btnDone: UIButton!
    @IBOutlet weak var btnEditProfPic: UIButton!
    
    //--- get profile image
    @IBOutlet weak var imgProfPic: UIImageView!
    
    //--- get UITextFields
    @IBOutlet weak var txtName: UITextField!
    
    //--- get UILabels
    @IBOutlet weak var lblTextCount: UITextField!
    @IBOutlet weak var lblFilesCount: UITextField!
    @IBOutlet weak var lblVideosCount: UITextField!
    @IBOutlet weak var lblMarsEmojisCount: UITextField!
    @IBOutlet weak var lblDBSize: UITextField!
    @IBOutlet weak var lblPercentLikely: UITextField!
    
    //---get test data
    let imgProfPicPlaceholder = UIImage(named: "marsPlaceholder.jpg")
    let username = "king_sammmm"
    let textcount = "20"
    let filecount = "100"
    let videocount = "2"
    let MEcount = "80"
    let dbSize = "1 / 10^20%"
    let percentLikely = "60%"
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setupView()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    //----- Setup the ViewController with initial data
    
    func setupView()
    {
        //TODO setup profile pic
        
        //TODO setup user's name
        
        //TODO setup msg count info
        
        //TODO setup DB size info
        
        //TODO setup % likely you are you
        
        //for now just use test data
        imgProfPic.image = imgProfPicPlaceholder
        txtName.text = username
        lblTextCount.text = textcount
        lblFilesCount.text = filecount
        lblVideosCount.text = videocount
        lblDBSize.text = dbSize
        lblPercentLikely.text = percentLikely
    }
    
    //----- UIButton methods
    
    @IBAction func btnEditProfPicClicked(_ sender: Any)
    {
        //TODO setup connection to allow changing prof pic
    }
    
    @IBAction func btnDoneClicked(_ sender: Any)
    {
        //TODO setup dismiss view
    }
    
    @IBAction func btnRaiseTrustClicked(_ sender: Any)
    {
        //TODO setup raise trust page connection
    }
    
    @IBAction func btnVisibleClicked(_ sender: Any)
    {
        //TODO setup all buttons and check boxes and stuff
    }
    

}
