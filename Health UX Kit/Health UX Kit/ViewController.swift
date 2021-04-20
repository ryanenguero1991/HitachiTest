//
//  ViewController.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/19/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func getStartedAction(_ sender: UIButton) {
        
        let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        
        
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    
}

