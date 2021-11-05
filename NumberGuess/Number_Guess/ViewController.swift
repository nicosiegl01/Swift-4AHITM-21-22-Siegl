//
//  ViewController.swift
//  NumberGuess
//
//  Created by Tikautz Gregor on 01.10.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    var generateNewNumber = false
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBAction func onTextFieldEditingChange(_ sender: UITextField) {
        guessButton.isEnabled = model.isValid(guess: sender.text)
    }
    
    @IBAction func button(_ sender: Any) {
        //TODO: check input for not nil
        let guessedNumber = Int(inputTextField.text!)!
        model.countOfTries += 1
        
        
        
        let text: String?
        
        switch model.compare(guess: guessedNumber){
        case 1:
            text = "Die Zahl ist zu groß"
        case -1:
            text = "Die Zahl ist zu klein"
        default:
            text = "Congrats richtig erraten du hast \(model.countOfTries) Versuche gebraucht"
        }
        
        label.text = text
        
        if(generateNewNumber){
            model.countOfTries = 0
            model.numberToGuess = Int.random(in: 0..<100)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        print("Zu erratende Zahl: \(model.numberToGuess)")
        
        // Do any additional setup after loading the view.
    }


}

