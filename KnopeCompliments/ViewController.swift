//
//  ViewController.swift
//  KnopeCompliments
//
//  Created by Fiona Lui on 2019-05-12.
//  Copyright © 2019 Lui.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var complimentView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    // Adjectives and nouns to form randomly generated compliments
    let adjs1: [String] = ["beautiful", "sophisticated", "sneaky", "opalescent", "perfect", "naïve", "noble", "spectacular", "gorgeous", "priceless", "wild", "clever", "unstoppable", "humble"]
    let adjs2: [String] = ["rule-breaking", "poetic", "talented", "brilliant", "rainbow-infused", "cunning", "glowing", "persistent", "expensive", "majestic", "wonderful", "glamorous", "intelligent"]
    let nouns: [String] = ["land-mermaid", "new-born baby", "tree shark", "sunflower", "moth", "muskox", "space unicorn", "sun-goddess", "sunfish", "golden retriever"]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard. ("Done" Button)
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Called immediately after textFieldShouldReturn()
        greetingLabel.text = "Welcome, " + textField.text! + "!"
        
        complimentView.font = UIFont(name: complimentView.font!.fontName, size: 18)
        complimentView.text = "Oh, " + textField.text! + ", you " + adjs1.randomElement()! + ", " + adjs2.randomElement()! + " " + nouns.randomElement()! + "!"
    }


    // MARK: Actions
    @IBAction func setNameText(_ sender: UIButton) {
        // On click of "Compliment Me!" button
//        complimentLabel.text = "Welcome!"
        let textField: String = nameTextField.text!
        
        complimentView.text = "Oh, " + textField + ", you " + adjs1.randomElement()! + ", " + adjs2.randomElement()! + " " +  nouns.randomElement()! + "!"
        
        
    }
    
    
}

