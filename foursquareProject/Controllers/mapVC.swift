//
//  mapVC.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/4/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapVC: UIViewController {

    //MARK: - Outlets & lazy properties
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locationSearchaBar: UISearchBar!
    @IBOutlet weak var venueCollectionView: UICollectionView!
    
    lazy var venueSearchBar: UISearchBar = {
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 300, height: 20))
        searchBar.placeholder = "Search for venues."
        searchBar.searchBarStyle = .minimal
        return searchBar
    }()
    //MARK: - Properties
    
    private let locationManager = CLLocationManager()
    let searchRadius: CLLocationDistance = 2000
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDelegates()
        mapView.userTrackingMode = .follow
        setUpVenueSearchBar()
        setUpLocationSearchBar()
        locationAuthorization()
        venueCollectionView.isHidden = true
        // Do any additional setup after loading the view.
    }
    //MARK: - Functions
    
    private func setUpDelegates() {
        locationManager.delegate = self
        mapView.delegate = self
        venueSearchBar.delegate = self
        locationSearchaBar.delegate = self
    }
    
    private func setUpVenueSearchBar() {
        let leftNavBarButton = UIBarButtonItem(customView: venueSearchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
        
    }
    private func setUpLocationSearchBar() {
        //locations searchBar
        locationSearchaBar.searchBarStyle = .minimal
        locationSearchaBar.placeholder = "New York, NY"
    }
    
    private func locationAuthorization() {
        let status = CLLocationManager.authorizationStatus()
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            mapView.showsUserLocation = true
            locationManager.requestLocation()
            locationManager.startUpdatingLocation()
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
        default:
            locationManager.requestWhenInUseAuthorization()
            
        }
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

extension mapVC: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("New location: \(locations)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Authorozation status changed to \(status.rawValue)")
        
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.requestLocation()
            //Call a function to get the current location
            
        default:
            break
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: \(error)")
    }
    
}

extension mapVC: MKMapViewDelegate {}

extension mapVC: UISearchBarDelegate {
    
}
