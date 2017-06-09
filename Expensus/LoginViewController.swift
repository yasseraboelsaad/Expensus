//
//  LoginViewController.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 7/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var signupButton: UIButton!
    @IBOutlet var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)
        
        signupButton.contentHorizontalAlignment = .left
        
        signinButton.layer.cornerRadius = 5
        signinButton.layer.borderWidth = 1
        signinButton.layer.borderColor = UIColor.clear.cgColor
        
        let blur = UIVisualEffectView(effect: UIBlurEffect(style:
            UIBlurEffectStyle.light))
        blur.frame = signupButton.bounds
        blur.isUserInteractionEnabled = false //This allows touches to forward to the button.
        signupButton.insertSubview(blur, at: 0)
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
