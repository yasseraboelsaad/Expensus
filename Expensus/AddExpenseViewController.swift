//
//  SecondViewController.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 7/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class AddExpenseViewController: UIViewController {

    @IBOutlet var nextButton: UIButton!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var keyboardButtons: [UIButton]!
    @IBOutlet var backgroundImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)
        
        for button in keyboardButtons {
            button.layer.cornerRadius = 20
            button.layer.borderWidth = 5
            button.layer.borderColor = UIColor.clear.cgColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func keyboardClick(_ sender: UIButton) {
        let tag = sender.tag
        switch (tag) {
        case (11):
            amountLabel.text = amountLabel.text! + "."
        case (12):
            var temp: String = amountLabel.text!
            temp = temp.substring(to: temp.index(before: temp.endIndex))
            amountLabel.text = temp
        default:
            amountLabel.text = amountLabel.text! + String(tag)
        }
    }

}

