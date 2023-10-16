//
//  SecondViewController.swift
//  TableViewSimpleCell
//
//  Created by Kathleen on 2023-10-16.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtTaskDescription: UITextField!
    
    @IBOutlet weak var switchDone: UISwitch!
    
    @IBAction func btnSaveTouchUpInside(_ sender: Any) {
    }
    
    @IBAction func btnDeleteTouchUpInside(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtTaskDescription.text = ""
    }
 

}
