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
    
    //--- get text field for name
    @IBOutlet weak var txtName: UITextField!

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
