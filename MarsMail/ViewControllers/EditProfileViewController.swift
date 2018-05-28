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
    @IBOutlet weak var lblTextCount: UILabel!
    @IBOutlet weak var lblFilesCount: UILabel!
    @IBOutlet weak var lblVideosCount: UILabel!
    @IBOutlet weak var lblMarsEmojisCount: UILabel!
    @IBOutlet weak var lblDBSize: UILabel!
    @IBOutlet weak var lblPercentLikely: UILabel!
    
    //--- get test data
    var imgProfPicPlaceholder = UIImage(named: "marsPlaceholder.jpg")
    var username = "king_sammmm"
    var textcount = "20"
    var filecount = "100"
    var videocount = "2"
    var MEcount = "80"
    var dbSize = "1 / 10^20%"
    var percentLikely = "60%"
    

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
        self.dismiss(animated: true, completion: nil)
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
