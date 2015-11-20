//
//  ViewController.swift
//  Exercise-Multiples-App
//
//  Created by Rahul Gupta on 19/11/15.
//  Copyright © 2015 Rahul gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var appTitle:UIImageView!
    @IBOutlet weak var playButton:UIButton!
    @IBOutlet weak var whatToAddTxtField:UITextField!
    
    @IBOutlet weak var CalculationLabel:UILabel!
    @IBOutlet weak var addButton:UIButton!
    
    // Properties
    var numberToAdd:Int = 0
    var updatedNumber:Int = 0
    let numberToRestart = 50
    
    @IBAction func OnPlayButtonPress(sender:UIButton){
        if(whatToAddTxtField.text != nil && whatToAddTxtField.text != ""){
            appTitle.hidden = true
            playButton.hidden = true
            whatToAddTxtField.hidden = true
            CalculationLabel.hidden = false
            addButton.hidden = false
            
            numberToAdd = Int(whatToAddTxtField.text!)!
        }
    }
    
    @IBAction func OnAddPressed(sender:UIButton){
        CalculationLabel.text = "\(updatedNumber) + \(numberToAdd) = \(updatedNumber + numberToAdd)"
        updatedNumber += numberToAdd
        if(GameRestart()){
            appTitle.hidden = false
            playButton.hidden = false
            whatToAddTxtField.hidden = false
            CalculationLabel.hidden = true
            addButton.hidden = true
            
            whatToAddTxtField.text = ""
            CalculationLabel.text = "Press ADD to add!"
            updatedNumber = 0
        }
    }
    
    func GameRestart()-> Bool{
        if updatedNumber > numberToRestart{
            return true
        }else{
            return false
        }
    }


}

