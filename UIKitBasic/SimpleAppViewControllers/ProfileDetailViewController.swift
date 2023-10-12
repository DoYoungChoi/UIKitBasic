//
//  ProfileDetailViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/12.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    var info: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info
    }
}
