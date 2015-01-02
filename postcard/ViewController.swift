//
//  ViewController.swift
//  postcard
//
//  Created by BigHurt on 12/26/14.
//  Copyright (c) 2014 BigHurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // print to message label
        messageLabel.hidden = false
        messageLabel.text = "Message: " + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // print to name label
        nameLabel.hidden = false
        nameLabel.text = "To: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
    }
    
    

}

