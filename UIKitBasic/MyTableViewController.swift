//
//  MyTableViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/12.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    let cellData = ["Hello TableView!", "라떼를 두고 나오니 아주 신경이 쓰인다", "우리 라떼 분리불안 극복!!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

// 코드 스타일: Table View와 관련된 내용을 extension으로 분리하여 관리
extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        
        return cell
    }
}
