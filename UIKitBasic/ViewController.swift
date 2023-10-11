//
//  ViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTapped(_ sender: Any) {
        myLabel.text = "Hello Dodor!!"
    }
}
