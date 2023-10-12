//
//  YellowViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/12.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var insertNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goNext" {
            let viewController = segue.destination as! OrangeViewController
            viewController.inputName = insertNameTextField.text ?? "이름이 입력되지 않았습니다."
        }
    }
}
