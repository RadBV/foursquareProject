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
        searchBar.placeholder = "Search for venues..."
        searchBar.searchBarStyle = .minimal
        searchBar.tag = 0
        return searchBar
    }()
    //MARK: - Properties
    
    private let locationManager = CLLocationManager()
    let searchRadius: CLLocationDistance = 2000
    
    var venues = [Venues]() {
        didSet {
            //            mapView.addAnnotations(venues.filter{$0.hasValidCoordinates})
            venueCollectionView.reloadData()
        }
    }
    var searchString: String? = nil {
        didSet{
            mapView.addAnnotations(venues.filter{ $0.hasValidCoordinates})
        }
    }
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setUpDelegates()
        mapView.userTrackingMode = .follow
        setUpVenueSearchBar()
        setUpLocationSearchBar()
        locationAuthorization()
        venueCollectionView.isHidden = true
        // Do any additional setup after loading the view.
    }
    //MARK: - Functions
    private func loadData() {
        guard let userLocation: CLLocationCoordinate2D = locationManager.location?.coordinate else { return }
        VenueAPIClient.shared.getEpisodes(lat: userLocation.latitude, long: userLocation.longitude, searchString: searchString) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let venuesFromOnline):
                    self.venues = venuesFromOnline
                    dump(venuesFromOnline)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
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
//MARK: - Extensions

extension mapVC: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("New location: \(locations)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Authorozation status changed to \(status.rawValue)")
        
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.requestLocation()
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
    //TODO: figure out how to add more than one annotation when new search term is entered
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        loadData()
        print(venues.count)
        switch searchBar.tag {
        case 0:
            //create activity indicator
            let activityIndicator = UIActivityIndicatorView()
            activityIndicator.center = self.view.center
            activityIndicator.startAnimating()
            self.view.addSubview(activityIndicator)
            
            searchBar.resignFirstResponder()
            
            //search request
            let searchRequest = MKLocalSearch.Request()
            searchRequest.naturalLanguageQuery = searchBar.text
            let activeSearch = MKLocalSearch(request: searchRequest)
            activeSearch.start { (response, error) in
                activityIndicator.stopAnimating()
                
                if response == nil {
                    print(error)
                } else {
                    //remove annotations
                    let annotations = self.mapView.annotations
                    self.mapView.removeAnnotations(annotations)
                    
                    //get data
                    for i in self.venues {
                        let newAnnotation = MKPointAnnotation()
                        newAnnotation.title = i.name
                        newAnnotation.coordinate = CLLocationCoordinate2D(latitude: i.location.lat, longitude: i.location.lng)
                        self.mapView.addAnnotation(newAnnotation)
                        
                        //to zoom in the annotation
                        let coordinateRegion = MKCoordinateRegion.init(center: newAnnotation.coordinate, latitudinalMeters: self.searchRadius * 2.0, longitudinalMeters: self.searchRadius * 2.0)
                        self.mapView.setRegion(coordinateRegion, animated: true)
                    }
                }
            }
        case 1:
            print("ehyuck")
        default:
            print("default")
        }
    }
}

//extension mapVC: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return venues.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell =
//    }
//
//
//}
