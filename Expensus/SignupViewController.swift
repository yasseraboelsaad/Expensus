//
//  SignupViewController.swift
//  Expensus
//
//  Created by Yasser Abouel-Saad on 7/6/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageViewPicker: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var singupButton: UIButton!
    @IBOutlet var loginButton: UIButton!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        imagePicker.delegate = self
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)
        
        
        loginButton.contentHorizontalAlignment = .left
        
        singupButton.layer.cornerRadius = 5
        singupButton.layer.borderWidth = 1
        singupButton.layer.borderColor = UIColor.clear.cgColor
        
        let blur = UIVisualEffectView(effect: UIBlurEffect(style:
            UIBlurEffectStyle.light))
        blur.frame = loginButton.bounds
        blur.isUserInteractionEnabled = false //This allows touches to forward to the button.
        loginButton.insertSubview(blur, at: 0)
        
        self.imageViewPicker.layer.cornerRadius = self.imageViewPicker.frame.size.width / 2.5;
        self.imageViewPicker.clipsToBounds = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editImage(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageViewPicker.contentMode = .scaleAspectFit
            imageViewPicker.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
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
