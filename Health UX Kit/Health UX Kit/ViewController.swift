//
//  ViewController.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblWelcomeMessage: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imageImage: UIImageView!
    
    @IBOutlet weak var btnGetStarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblWelcomeMessage.text = "This is Health UX Kit, Welcome"
        btnGetStarted.roundCorner()
       
    }

    @IBAction func getStartedAction(_ sender: UIButton) {
        
        let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        
        
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    
}

