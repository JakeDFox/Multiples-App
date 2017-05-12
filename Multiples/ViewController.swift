//
//  ViewController.swift
//  Multiples
//
//  Created by Jacob Fox on 2017-04-04.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    //Properties
    
    var currentMultiple = 0
    var currentFirstNumber = 0
    var currentSum = 0
    
    //Outlets

    @IBOutlet weak var Multiples: UIImageView!

    @IBOutlet weak var WhatMultiplesTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    
    @IBAction func onAddBtnPressed(Sender: UIButton!){
        updateMultiplesLbl()
        currentFirstNumber = currentSum
        
        if isGameOver() {
                restartGame()
        }
    }
    
    
    @IBAction func onPlayBtnPressed(Sender: UIButton!){
        
        if WhatMultiplesTxt.text != nil && WhatMultiplesTxt.text != ""{
            
            Multiples.isHidden = true
            
            WhatMultiplesTxt.isHidden = true
            
            playBtn.isHidden = true

            addLbl.isHidden = false

            addBtn.isHidden = false
            
            currentMultiple = Int(WhatMultiplesTxt.text!)!
            currentFirstNumber = 0
   
        }
    
    }
    

        func isGameOver() ->Bool {
            if currentSum >= 500 {
                return true
            } else {
                return false
            }
            }
        
        func restartGame(){
        
            currentMultiple = 0
            currentSum = 0
            currentFirstNumber = 0
            WhatMultiplesTxt.text = ""
        
        Multiples.isHidden = false
        
        WhatMultiplesTxt.isHidden = false
        
        playBtn.isHidden = false
        
        addLbl.isHidden = true
        
        addBtn.isHidden = true
            
        updateMultiplesLbl()

        }
    
    func updateMultiplesLbl(){
        currentSum = (currentFirstNumber) + (currentMultiple)
        addLbl.text = "\(currentFirstNumber) + \(currentMultiple) = \(currentSum)"
    
}

}
