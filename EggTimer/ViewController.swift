//
//  ViewController.swift
//  EggTimer
//
//  Created by IMCS2 on 2/10/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isRunning = false
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var counter  = 0.0
    
    @IBAction func playButtonTapped(_ sender: Any) {
        if !isRunning{
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            isRunning = true
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        if counter<10.0 {counter = 0.0-1}
        else {counter = counter - 11.0}
        //back button code
    }
    
    
    @IBAction func pauseButtonTapped(_ sender: Any) {
        timer.invalidate()
        isRunning = false
    }
   
    @IBAction func forwardTapped(_ sender: Any) {
        counter += 9
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        counter = 0.0 - 1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timerLabel.text="\(counter)"
    }
    
    @objc func updateTimer(){
        counter += 1.0
        timerLabel.text=String(format: "%.1f", counter)
    }
    
    
    
}

