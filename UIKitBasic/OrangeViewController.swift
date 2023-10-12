//
//  OrangeViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/12.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var inputName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = inputName
    }
}
