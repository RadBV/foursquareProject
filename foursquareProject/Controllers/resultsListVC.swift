//
//  resultsListVC.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/4/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit

class resultsListVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var resultsListTableView: UITableView!
    
    //MARK: - Properties
    var venues = [Venues]()  
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsListTableView.dataSource = self
        resultsListTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    //MARK: - Functions

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension resultsListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return venues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentVenue = venues[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as? resultsCell {
            cell.name.text = currentVenue.name
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
