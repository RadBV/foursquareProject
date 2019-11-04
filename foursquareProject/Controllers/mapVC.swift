//
//  mapVC.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/4/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit
import MapKit

class mapVC: UIViewController {

    //MARK: - Outlets & lazy properties
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locationSearchaBar: UISearchBar!
    
    lazy var venueSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        
        return searchBar
    }()
    
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()

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
