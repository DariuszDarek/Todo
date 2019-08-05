//
//  ViewController.swift
//  TODO
//
//  Created by Dariusz Różecki on 02/08/2019.
//  Copyright © 2019 Dariusz Różecki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var todo: [String] = [""]
    @IBOutlet weak var todoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTableView.delegate = self
        todoTableView.dataSource = self
        todoTableView.rowHeight = 80
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addTodo(_ sender: Any) {
        let todoAlert = UIAlertController(title: "add todo", message: "add a new todo", preferredStyle: .alert)
        todoAlert.addTextField()
        let addtodoaction = UIAlertAction(title: "add", style: .default) {(action) in
            let newtodo = todoAlert.textFields![0]
            self.todo.append(newtodo.text!)
            self.todoTableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .default)
        todoAlert.addAction(addtodoaction)
        todoAlert.addAction(cancelAction)
        present(todoAlert, animated: true, completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoCell
        cell.todoLabel.text = todo[indexPath.row]
        return cell
    }       // mark task as done
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TodoCell
        if cell.isChecked == false{
            cell.checkmarkImage.image = UIImage(named: "Check_mark.png")
            cell.isChecked = true
        }
        else {
            cell.checkmarkImage.image = nil
            cell.isChecked = false
        
        }
        
    }
  //  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
  //      if editingStyle == .delete  {
            
 //           todo.remove(at: indexPath.row)
 //           todoTableView.reloadData()
 //       }
    
 //   }
    //delete and edit cell
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editaction = UITableViewRowAction(style: .default, title: "edit") { (action, indexPath) in
           
        }
        let deleteaction = UITableViewRowAction(style: .default, title: "delete") { (action, indexPath) in
            self.todo.remove(at: indexPath.row)
            self.todoTableView.reloadData()
        }
        
        editaction.backgroundColor = .blue
        deleteaction.backgroundColor = .red
        return [editaction , deleteaction]
        
    }
   
    private func updateAction(todo: TodoCell,indexpath:IndexPath)
    {
        let upAlert = UIAlertController(title: "up", message: "update", preferredStyle: .alert)
        upAlert.addTextField()
        let updata = UIAlertAction(title: "up", style: .default) {(action) in
     //   let saveUp = UIAlertController(
  
    }
    
}
}
