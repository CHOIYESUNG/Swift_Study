//
//  PlusViewController.swift
//  ToDoin_UIkit
//
//  Created by Y3SUNG on 2022/09/09.
//

import UIKit

class PlusViewController: UIViewController {
    @IBOutlet weak var inputTodo: UITextField!
    @IBOutlet weak var showWidget: UISwitch!
    @IBOutlet weak var deadlineDate: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var tasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.addTarget(self, action: #selector(tabSaveButton), for: .touchUpInside)
    }
    
    @objc
    func tabSaveButton() {
        debugPrint("\(inputTodo.text!)")
        debugPrint("\(saveButton.isSelected)")
        debugPrint("\(deadlineDate.date)")
        tasks.append(Task(title: inputTodo.text!, date: deadlineDate.date, isShowWidget: showWidget.isOn))
        
        self.navigationController?.popViewController(animated: true)
    }
}
