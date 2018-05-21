//
//  UserTableViewCell.swift
//  MarsMail
//
//  Created by Sam King on 5/21/18.
//  Copyright © 2018 MarsMail. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell
{
    //---- overall view
    @IBOutlet weak var myView: UIView!

    //---- thread data to show
    @IBOutlet weak var imageProfPic: UIImageView!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblUserInfo: UILabel!
}
