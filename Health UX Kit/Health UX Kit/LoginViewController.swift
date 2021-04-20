//
//  LoginViewController.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/19/21.
//

import UIKit
import Material

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var isSecureText : Bool = true
    var isValidEmail : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtUsername.tag = 1
        txtPassword.tag = 2
        txtUsername.roundCornerWithShadow()
        txtPassword.roundCornerWithShadow()

        txtUsername.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
        txtPassword.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
        
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Atoms- Icons- Eye Active.png"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
        button.frame = CGRect(x: CGFloat(txtPassword.frame.size.width - 25), y: CGFloat(10), width: CGFloat(20), height: CGFloat(20))
        button.addTarget(self, action: #selector(self.refresh), for: .touchUpInside)
        txtPassword.rightView = button
        txtPassword.rightViewMode = .always

        
    }
    
    
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        
        
        if txtUsername.text != nil && txtUsername.text != nil{
            if isValidEmail == true{
                
                print("Next View")
                
                let tabBarController = self.storyboard?.instantiateViewController(identifier: "TabBarViewController") as! TabBarViewController
                
                
                self.navigationController?.pushViewController(tabBarController, animated: true)
            }
            
            
        }
        
    }
    
    @IBAction func refresh(_ sender: Any) {
        
        if isSecureText == true{
            isSecureText = false
            txtPassword.isSecureTextEntry = isSecureText
        }else if isSecureText == false{
            isSecureText = true
            txtPassword.isSecureTextEntry = isSecureText
        }
    }
    
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        print(textField.text!)
        
        if textField.tag == 1{
            if validateEmail(enteredEmail: textField.text!) == true{
                textField.setupRightImage(imageName: "Atoms- Selectors- Selected.png")
                isValidEmail = true
            }else{
                print("e-mail invalid")
                textField.setupRightImage(imageName: "")
                isValidEmail = false
            }
        }
    }

    
    func validateEmail(enteredEmail:String) -> Bool {

        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)

    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
