//
//  ViewController.swift
//  fingers
//
//  Created by Erin Moon on 12/8/16.
//  Copyright © 2016 Erin Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toeInput: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    var toes: Float = 0.0
    
    @IBAction func subButt(_ sender: Any) {
        var toeInput2: Float
        
        toes = Float(arc4random_uniform(5) + 1)
        
        if (toeInput.text != "") {
            toeInput2 = Float(toeInput.text!)!
            
            if toeInput2 == toes {
                answer.text = "Indubitably!"
            } else {
                answer.text = "You are wrong! It was \(Int(toes))."
            }
        } else {
            toeInput2 = 0
            
            answer.text = "Not enough toes."
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        toeInput.text = ""
        
        answer.text = ""
        
        toes = Float(arc4random_uniform(4) + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

