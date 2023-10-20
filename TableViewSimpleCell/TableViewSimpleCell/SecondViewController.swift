//
//  SecondViewController.swift
//  TableViewSimpleCell
//
//  Created by Kathleen on 2023-10-16.
//

import UIKit

protocol SecondViewControllerDelegate {
    func refreshTable()
}

class SecondViewController: UIViewController {
    
    public var delegate : SecondViewControllerDelegate?
    
    public var selectedRow : Int?

    @IBOutlet weak var txtTaskDescription: UITextField!
    
    @IBOutlet weak var txtTaskInstruction: UITextField!
    
    @IBOutlet weak var swDone: UISwitch!
    
    @IBAction func btnSaveTouchUpInside(_ sender: Any) {
        let task = TaskProvider.all[selectedRow!]
        task.description = txtTaskDescription.text!
        task.instructions = txtTaskInstruction.text!
        task.done = swDone.isOn
        
        if self.delegate != nil {   // somebody is listening....
            self.delegate!.refreshTable()
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnDeleteTouchUpInside(_ sender: Any) {
        TaskProvider.all.remove(at: self.selectedRow!)
        
        if self.delegate != nil {   // somebody is listening....
            self.delegate!.refreshTable()
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let task = TaskProvider.all[selectedRow!]
        txtTaskDescription.text = task.description
        txtTaskInstruction.text = task.instructions
        swDone.isOn = task.done
    }
 

}
