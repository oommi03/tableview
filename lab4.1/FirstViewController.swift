//
//  FirstViewController.swift
//  lab4.1
//
//  Created by Teerawat kumsila on 2/1/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITextViewDelegate , UITableViewDataSource {

    let x = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set("oommi", forKey: "name")
        let x = UserDefaults.standard.object(forKey: "name")
        print(x)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = "asdsad"
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "view control", sender: self)
    }
   
    
}

