//
//  HomeViewController.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/20/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var homeViewTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeViewTable.delegate = self
        homeViewTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0{
//
//            return 339
//        }else if indexPath.row == 1{
//            return 246
//        }else{
//            return 147
//        }
        
        return 339
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellHeader = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell", for: indexPath) as! HeaderTableViewCell
        let cellDashboard = tableView.dequeueReusableCell(withIdentifier: "DashboardTableViewCell", for: indexPath) as! DashboardTableViewCell
        let cellSpecialist = tableView.dequeueReusableCell(withIdentifier: "SpecialistTableViewCell", for: indexPath) as! SpecialistTableViewCell
       
        
        if indexPath.row == 0{
            
            return cellHeader
        }else if indexPath.row == 1{
            return cellDashboard
        }else{
            return cellSpecialist
        }
//        return cell
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
