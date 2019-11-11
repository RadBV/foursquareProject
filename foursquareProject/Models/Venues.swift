//
//  Venues.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/6/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

struct X2VenuesWrapper: Codable {
    let response: VenuesWrapper
}
struct VenuesWrapper: Codable {
    let venues: [Venues]
}

class Venues: NSObject, Codable, MKAnnotation {
    let name: String
    let location: LocationWrapper
    
    @objc var coordinate: CLLocationCoordinate2D {
        let latLong = [location.lat, location.lng]
        return CLLocationCoordinate2D(latitude: latLong[0], longitude: latLong[1])
    }
    
    var hasValidCoordinates: Bool {
        return coordinate.latitude != 0 && coordinate.longitude != 0
    }
    
    static func getVenues(from data: Data) throws -> [Venues]? {
        do {
            let response = try JSONDecoder().decode(X2VenuesWrapper.self,from: data)
            return response.response.venues
        } catch {
            return nil
        }
    }
}

struct LocationWrapper: Codable {
    let address: String?
    let lat: Double
    let lng: Double
}
