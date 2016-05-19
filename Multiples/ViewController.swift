//
//  ViewController.swift
//  Multiples
//
//  Created by Rosemary Espinal on 5/16/16.
//  Copyright © 2016 Rosemary Espinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  */
    
    //Outlets for UI components
    
    @IBOutlet weak var multiplesLogo: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var addButtonLogo: UILabel!
    
    @IBOutlet weak var resultsFieldLabel: UILabel!
    
    //Global variables
    let startingValue = 0;
    var textFieldInputValue = 0;
    var runningSum = 0;
    var currentSum = 0;
    
    //On play button click
    @IBAction func onPlayButtonClick (sender: UIButton) {
        
        textFieldInputValue = Int(textField.text!)!
        
        //check to see if the text field is empty, if so dont start the game
        if textFieldInputValue == 0 {
            return;
        } else {
            startGame();
        }

    }
    
    @IBAction func onAddButtonClick (sender: UIButton) {
        //hide the addButtonLogo
        addButtonLogo.hidden = true;
        
        //display results
        displayResults()
        
    }
    
    //function to keep track of current running sum based on user input number
    func add() -> Int {
        currentSum += textFieldInputValue
        return currentSum
    }
    
    func displayResults() {
        //calculate the overall running sum
        runningSum = add() + textFieldInputValue
        
        //display results
        resultsFieldLabel.text = "\(textFieldInputValue)" + " + " + "\(currentSum)" + " = " + "\(runningSum)"
    }
    
    func startGame(){
        //unhide the results text field
        resultsFieldLabel.hidden = false;
        resultsFieldLabel.text = "\(startingValue)";
        
        //hide play button, multiples logo, text field
        playButton.hidden = true;
        multiplesLogo.hidden = true;
        textField.hidden = true;
        
        
        //show the add button and add label
        addButton.hidden = false;
        addButtonLogo.hidden = false;
    }
    
}

