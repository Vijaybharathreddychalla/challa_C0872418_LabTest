//
//  ViewController.swift
//  challa_C0872418_LabTest
//
//  Created by Vijay Bharath Reddy Challa on 2022-11-04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var LapBtn: UIButton!
    
    var  counter =  00.00
    var timer = Timer()
    var isPlaying = false
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = String(counter)
        LapBtn.isEnabled = false
    }
    
    
   
    
    @IBAction func startTimer(_ sender: Any) {
        
        
        if (isPlaying){
            return
        }
       
       // self.startBtn.setTitle("Stop", for: .normal)
        LapBtn.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(updatetimer), userInfo: nil, repeats: true)
            
         isPlaying = true
        
        
        
        
        
    }
    @IBAction func updatetimer()
        {
            counter = counter + 0.1
           
            
            timerLabel.text = String(format: "%.1f", counter)
        }
    
    
    
    
    @IBAction func Laptimer(_ sender: AnyObject) {
        
        
      
        LapBtn.isEnabled = false
        timer.invalidate()
        isPlaying = false
        
        
        
        
    }
    
  
    
    

    
    
    
    
    


}

