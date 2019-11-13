
//
//  VenueAPICLient.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/6/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation

class VenueAPIClient {
    private init() {}
    static let shared = VenueAPIClient()
    
    func getEpisodes(lat: Double, long: Double, searchString: String?, completionHandler: @escaping (Result<[Venues],ErrorHandling>) -> Void ) {
        
//        guard let searchString = searchString else {return}
//        let urlStr = "https://api.foursquare.com/v2/venues/search?ll=\(lat),\(long)&client_id=\(Secrets.apiID)&client_secret=\(Secrets.apiKey)&v=20191104&query=\(searchString)"
        
        let urlStr = "https://api.foursquare.com/v2/venues/search?ll=40.7484,-73.9857&client_id=\(Secrets.apiID)&client_secret=\(Secrets.apiKey)&v=20191104&query=coffee"
        
        NetworkManager.shared.fetchData(urlStr: urlStr) { (result) in
            switch result {
            case .failure(let appError):
                completionHandler(.failure(appError))
            case .success(let data):
                do {
                    let venueData = try JSONDecoder().decode(X2VenuesWrapper.self, from: data)
                    completionHandler(.success(venueData.response.venues))
                } catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
}
