//
//  ViewController.swift
//  Tapper
//
//  Created by Daniel Zhang on 9/15/15.
//  Copyright © 2015 Daniel Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //Properties
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
            
        }
        
        
    }
    
    @IBAction func playButtonPressed(sender: UIButton!){
       
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImage.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        
            
            }
        }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
            howManyTapsTxt.resignFirstResponder()
        return true
    }
    
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImage.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }
        else{
            return false
        }
    }
    func updateTapsLabel(){
        tapsLabel.text = "\(currentTaps) Taps"

        
        
    }
    
}

