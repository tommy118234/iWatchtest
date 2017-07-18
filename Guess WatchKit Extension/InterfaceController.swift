//
//  InterfaceController.swift
//  Guess WatchKit Extension
//
//  Created by Tommy Tsui on 18/7/2017.
//  Copyright © 2017 TommyTsui. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    
    @IBOutlet var guessSlider: WKInterfaceSlider!    // the slider
    @IBOutlet var guessLabel: WKInterfaceLabel!     // the label displaying the guess number
    @IBOutlet var resultLabel: WKInterfaceLabel!    // Wrong/Correct Label

    @IBAction func updateGuess(_ value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess: \(guessNumber)")
    }
    @IBAction func startGuess() {
        
        let randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("Correct. You win!")
            
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
        
    }
    var guessNumber = 3

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
