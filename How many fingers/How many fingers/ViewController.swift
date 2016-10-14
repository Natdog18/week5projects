//
//  ViewController.swift
//  How many fingers
//
//  Created by Rose Bailey on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func Press(_ sender: AnyObject) {
    
    
    let diceRoll = String(arc4random_uniform(8))
    
    if fingersTextField.text == diceRoll {
    
    resultLabel.text = "You're Right!"
    
    }else{
    
    resultLabel.text = "Wrong! It was " + diceRoll + "."
    }
}
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

