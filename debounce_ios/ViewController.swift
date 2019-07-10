//
//  ViewController.swift
//  debounce_ios
//
//  Created by smallcase_kolhar730 on 2019-07-08.
//  Copyright © 2019 smallcase_kolhar730. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var isButtonClicked : Bool = false
    var btnClickCounter : Int = 0

    @IBAction func debounceButton(_ sender: UIButton) {
        self.isButtonClicked = true
        self.btnClickCounter += 1
        
        if (self.isButtonClicked) {
            sender.isEnabled = false
            sender.setTitle("Please wait..", for: .normal)
            sender.backgroundColor = .gray
            print(String(self.btnClickCounter))
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                sender.isEnabled = true
                print("Button is now enabled")
                sender.setTitle("Button", for: .normal)
                sender.backgroundColor = .black
                self.isButtonClicked = false
            }
        }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    }
}
