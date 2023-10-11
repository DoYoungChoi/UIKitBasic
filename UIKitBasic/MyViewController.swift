//
//  MyViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/11.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "\(name)님 안녕하세요!"
        }
    }
}
