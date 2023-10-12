//
//  MyViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/11.
//

import UIKit

protocol AdminDelegate {
    func doTask()
}

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        admin = Admin(delegate: self)
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "\(name)님 안녕하세요!"
        }
        admin?.delegate.doTask()
    }
}

extension MyViewController: AdminDelegate {
    func doTask() {
        print("일 하는 중...")
    }
}

struct Admin {
    var delegate: AdminDelegate
}
