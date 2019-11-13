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

/*
 {
     "meta": {
         "code": 200,
         "requestId": "5dc9cefa0f59680028ce566f"
     },
     "response": {
         "photos": {
             "count": 1,
             "items": [
                 {
                     "id": "51b8f916498e6a8c16a329eb",
                     "createdAt": 1371076886,
                     "source": {
                         "name": "Instagram",
                         "url": "http://instagram.com"
                     },
                     "prefix": "https://fastly.4sqi.net/img/general/",
                     "suffix": "/26739064_mUxQ4CGrobFqwpcAIoX6YoAdH0xCDT4YAxaU6y65PPI.jpg",
                     "width": 612,
                     "height": 612,
                     "user": {
                         "id": "26739064",
                         "firstName": "Darius",
                         "lastName": "Alonzo",
                         "gender": "male",
                         "photo": {
                             "prefix": "https://fastly.4sqi.net/img/user/",
                             "suffix": "/BWWLKDFKJ4VOVFXK.jpg"
                         }
                     },
                     "checkin": {
                         "id": "51b8f915498e481c2e86de41",
                         "createdAt": 1371076885,
                         "type": "checkin",
                         "timeZoneOffset": -240
                     },
                     "visibility": "public"
                 }
             ],
             "dupesRemoved": 0
         }
     }
 }
 */
