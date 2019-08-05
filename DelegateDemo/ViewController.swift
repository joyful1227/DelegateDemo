//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Joy on 2019/8/2.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GetData {
    

    @IBOutlet weak var aTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToBViewController" {
           let bViewController = segue.destination as! BViewController
            bViewController.delegate = self
            
        }
    }
    
    func receiveData(data: String) {
       
        aTextField.text = data
    }
    
}

