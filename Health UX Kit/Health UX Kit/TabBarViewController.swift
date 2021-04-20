//
//  TabBarViewController.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/20/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.items?[0].image = UIImage(named: "Path.png")?.withRenderingMode(.alwaysOriginal)
        self.tabBar.items?[1].image = UIImage(named: "Icons- find.png")?.withRenderingMode(.automatic)
        self.tabBar.items?[2].image = UIImage(named: "Button.png")?.withRenderingMode(.alwaysOriginal)
        self.tabBar.items?[3].image = UIImage(named: "Icons- heart.png")?.withRenderingMode(.alwaysOriginal)
        self.tabBar.items?[4].image = UIImage(named: "Icons- user.png")?.withRenderingMode(.alwaysOriginal)
        
        

        // Do any additional setup after loading the view.
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
