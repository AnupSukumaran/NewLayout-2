//
//  ViewController.swift
//  NewLayout
//
//  Created by Sukumar Anup Sukumaran on 22/02/18.
//  Copyright © 2018 AssaRadviewTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    //@IBOutlet weak var topConstrain: NSLayoutConstraint!
    
    @IBOutlet weak var topConstrain: NSLayoutConstraint!
    
    @IBOutlet weak var leftConstrain: NSLayoutConstraint!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var email2TextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    var activeField: UITextField?
    
    var textFields: [UITextField] = []
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields = [emailTextField, passwordTextField, nameTextField, email2TextField, password2TextField, confirmPassword]
        
        for textField123 in textFields {
            textField123.delegate = self
        }
        
        scrollView.isScrollEnabled = false
        scrollView.decelerationRate = UIScrollViewDecelerationRateNormal
        UIApplication.shared.statusBarView?.backgroundColor = #colorLiteral(red: 0.8431529999, green: 0.2241348326, blue: 0.1820394695, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
        
        registerForKeyboardNotifications()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    
    
    @objc func dismissKeyboard() {
        print("IAMTOUCHED")
        for textField123 in textFields {
            textField123.resignFirstResponder()
        }
        
    }
    
    @IBAction func downScrollButton(_ sender: Any) {
        
        for textField123 in textFields {
            textField123.resignFirstResponder()
        }
        
        self.topConstrain.constant =  507
        self.leftConstrain.constant = 45
       
        UIView.animate(withDuration: 1.5, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.scrollView.contentOffset.y = 0.0
             self.view.layoutIfNeeded()
        }, completion: nil)
        

    }
    
    @IBAction func upScrollButton(_ sender: Any) {
        
        for textField123 in textFields {
            textField123.resignFirstResponder()
        }
        
        self.topConstrain.constant =  542 + 26
        self.leftConstrain.constant = 116 + 26

        
        
        UIView.animate(withDuration: 1.5, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.scrollView.contentOffset.y = self.scrollView.contentSize.height - self.scrollView.bounds.size.height
             self.view.layoutIfNeeded()
        }, completion: nil)
        
      
        
    }

    
    deinit {
        deregisterFromKeyboardNotifications()
    }
    
    func registerForKeyboardNotifications()
    {
        //Adding notifies on keyboard appearing
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWasShown(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillBeHidden(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func deregisterFromKeyboardNotifications()
    {
        //Removing notifies on keyboard appearing
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    
    @objc func keyboardWasShown(notification: NSNotification)
    {
        //Need to calculate keyboard exact size due to Apple suggestions
        self.scrollView.isScrollEnabled = false
        let info : NSDictionary = notification.userInfo! as NSDictionary
        let keyboardSize = (info[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.size
        let contentInsets : UIEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, keyboardSize!.height + 14, 0.0)
        
        self.scrollView.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets
       
        
        var aRect : CGRect = self.view.frame
       
        
        aRect.size.height -= keyboardSize!.height
        
       
        
        if activeField != nil
        {
            
            if (!aRect.contains(activeField!.frame.origin))
            {
                self.scrollView.scrollRectToVisible(activeField!.frame, animated: true)
            }
        }
        
        
    }
    
    @objc func keyboardWillBeHidden(notification: NSNotification)
    {
        
        let contentInsets : UIEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)
        
        
        self.scrollView.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets
        self.view.endEditing(true)
        self.scrollView.isScrollEnabled = false
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        print("Beginging")
        activeField = textField

    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        print("EndEditing")
        activeField = nil
        
    }
    
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}

