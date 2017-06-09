//
//  AddExpenseDetailsViewController.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 9/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class AddExpenseDetailsViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var dateTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var costLabel: UILabel!
    @IBOutlet var categoriesButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)
        
        for button in categoriesButtons {
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 5
            button.layer.borderColor = UIColor.clear.cgColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
