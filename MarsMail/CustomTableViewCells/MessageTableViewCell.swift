//
//  MessageTableViewCell.swift
//  MarsMail
//
//  Created by Sam King on 3/21/18.
//  Copyright © 2018 MarsMail. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell
{
    //---- overall view
    @IBOutlet weak var myView: UIView?

    //---- thread data to show
    @IBOutlet weak var imageThread: UIImageView?
    @IBOutlet weak var lblThreadName: UILabel?
    @IBOutlet weak var lblThreadRecentMessage: UILabel?
    @IBOutlet weak var lblThreadRecentTime: UILabel?
}

