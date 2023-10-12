//
//  TodoViewController.swift
//  UIKitBasic
//
//  Created by dodor on 2023/10/12.
//

import UIKit

struct TodoItem {
    let title: String
    var isCompleted: Bool
}

class TodoViewController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
    var todos: [TodoItem] = [
        TodoItem(title: "커밋하기", isCompleted: false),
        TodoItem(title: "인강듣기", isCompleted: false),
        TodoItem(title: "라떼 산책하기", isCompleted: true),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        todoTableView.backgroundColor = .yellow
        
        todoTableView.delegate = self
        todoTableView.dataSource = self
    }
}

extension TodoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        var todo = todos[indexPath.row]
        cell.imageView?.image = UIImage(systemName: todo.isCompleted ? "checkmark.square" : "square")
        cell.textLabel?.text = todo.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let myAction = UIContextualAction(style: .normal,
                                          title: todos[indexPath.row].isCompleted ? "미완" : "완료") { action, view, completionHandler in
            self.todos[indexPath.row].isCompleted.toggle()
            self.todoTableView.reloadData()
            completionHandler(true)
        }
        return UISwipeActionsConfiguration(actions: [myAction])
    }
}
