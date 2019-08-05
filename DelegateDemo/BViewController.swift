//
//  BViewController.swift
//  DelegateDemo
//
//  Created by Joy on 2019/8/3.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

protocol GetData: class {
    func receiveData(data: String)
}


class BViewController: UIViewController {

    @IBOutlet weak var bTextField: UITextField!
    
    weak var delegate: GetData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func clickDone(_ sender: UIBarButtonItem) {
        delegate?.receiveData(data: bTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    

    
    @IBAction func clickCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
