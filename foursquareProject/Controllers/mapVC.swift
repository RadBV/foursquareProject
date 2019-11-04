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
    @IBOutlet weak var venueCollectionView: UICollectionViewCell!
    
    lazy var venueSearchBar: UISearchBar = {
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 300, height: 20))
        searchBar.placeholder = "Search for venues."
        searchBar.searchBarStyle = .minimal
        return searchBar
    }()
    
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVenueSearchBar()
        setUpLocationSearchBars()
        venueCollectionView.isHidden = true
        // Do any additional setup after loading the view.
    }
    //MARK: - Functions
    
    private func setUpVenueSearchBar() {
        let leftNavBarButton = UIBarButtonItem(customView: venueSearchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
        
    }
    private func setUpLocationSearchBars() {
        //locations searchBar
        locationSearchaBar.searchBarStyle = .minimal
        locationSearchaBar.placeholder = "New York, NY"
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
