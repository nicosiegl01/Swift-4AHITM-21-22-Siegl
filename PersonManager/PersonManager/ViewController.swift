//
//  Model.swift
//  PersonManager
//
//  Created by Nico Siegl on 29.11.21.
//

import UIKit

class ViewController: UIViewController {
    var model:Model = Model()
    var vorName:String = ""
    var nachName:String = ""

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func addName(_ sender: Any) {
        vorName = firstNameTextField.text!
        nachName = lastNameTextField.text!
        model.addName(firstName: vorName, lastName: nachName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TableViewController
        
        if let controller = viewController {
            print("ok")
            controller.model = self.model
        }
    }
}
