//
//  VenuePhotoes.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/11/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation

struct PhotoWrapper2X: Codable {
    let response: PhotoWrapper
}

struct PhotoWrapper: Codable {
    let photos: ItemWrapper
}

struct ItemWrapper: Codable {
    let items: [Photos]
}

struct Photos: Codable {
    let prefix: String
    let suffix: String
}
