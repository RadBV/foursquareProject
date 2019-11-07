//
//  foursquareProjectTests.swift
//  foursquareProjectTests
//
//  Created by Radharani Ribas-Valongo on 11/4/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import XCTest
@testable import foursquareProject

class foursquareProjectTests: XCTestCase {

    
    func testWeatherJSON() {
        var data = Data()
        guard let pathToData = Bundle.main.path(forResource: "venueSamples", ofType: "json") else { fatalError("Couldn't find json file") }
        let url = URL(fileURLWithPath: pathToData)
        do {
            data = try Data(contentsOf: url)
            let venues = try Venues.getVenues(from: data)
            XCTAssertTrue(venues?.count ?? 0 > 0)
            
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
