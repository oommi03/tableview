//
//  SecondViewController.swift
//  lab4.1
//
//  Created by Teerawat kumsila on 2/1/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate {
    
    let y = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

