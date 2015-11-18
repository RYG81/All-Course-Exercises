//
//  ViewController.swift
//  Tapper-App
//
//  Created by Rahul Gupta on 17/11/15.
//  Copyright © 2015 Rahul gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tapperLogo:UIImageView!
    @IBOutlet weak var tapTxtField:UITextField!
    @IBOutlet weak var playBtn:UIButton!
    
    @IBOutlet weak var coinBtn:UIButton!
    @IBOutlet weak var tapLbl:UILabel!
    
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    @IBAction func PlayButtonPressed(sender:UIButton!){

        if(tapTxtField.text != nil && tapTxtField.text != "")
        {
            
            //hide first screen objects
            tapperLogo.hidden = true
            tapTxtField.hidden = true
            playBtn.hidden = true
            
            //unhide second screen objects
            coinBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(tapTxtField.text!)!
            currentTaps = 0
            
            SetTapLabel()
        }
    }
    
    @IBAction func OnCoinPressed(sender:UIButton!){
        currentTaps++
        SetTapLabel()
        if isGameOver(){
            restartGame()
        }
    }
    
    func SetTapLabel(){
        tapLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver()->Bool{
        if(currentTaps >= maxTaps){
            return true
        }else{
            return false
        }
    }
    
    func restartGame(){
        
        maxTaps = 0
        tapTxtField.text = ""
        
        //unhide first screen objects
        tapperLogo.hidden = false
        tapTxtField.hidden = false
        playBtn.hidden = false
        
        //hide second screen objects
        coinBtn.hidden = true
        tapLbl.hidden = true
    }
}











