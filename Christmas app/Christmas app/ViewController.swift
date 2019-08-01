//
//  ViewController.swift
//  Christmas app
//
//  Created by GWC on 7/29/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {


    
    @IBOutlet weak var inputTaskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func handleAddTaskButtonPress(_ sender: Any) {
        addNewTask()
    }
    
    
   
    func addNewTask(){
        if (inputTaskTextField.text != ""){
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context)
            newTask.taskName = inputTaskTextField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print(newTask.taskName!)
            inputTaskTextField.text = ""
            inputTaskTextField.resignFirstResponder()
        }
    }
    
    

}
