//
//  Venues.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/6/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation

struct X2VenuesWrapper: Codable {
    let response: VenuesWrapper
}
struct VenuesWrapper: Codable {
    let venues: [Venues]
}

struct Venues: Codable {
    let name: String
    let location: LocationWrapper
    
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

/*
 {
     "meta": {
         "code": 200,
         "requestId": "5dc36487a1db64002c4887d7"
     },
     "response": {
         "venues": [
             {
                 "id": "58cc9644739d8523a63d716a",
                 "name": "Allegro Coffee Company",
                 "location": {
                     "address": "1095 Avenue Of The Americas",
                     "crossStreet": "41st",
                     "lat": 40.75453645610046,
                     "lng": -73.98430530273227,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.75453645610046,
                             "lng": -73.98430530273227
                         }
                     ],
                     "distance": 693,
                     "postalCode": "10036",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "1095 Avenue Of The Americas (41st)",
                         "New York, NY 10036",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4aa52d50f964a520834720e3",
                 "name": "Stumptown Coffee Roasters",
                 "location": {
                     "address": "18 W 29th St",
                     "crossStreet": "at Broadway",
                     "lat": 40.745835357994196,
                     "lng": -73.98807133259928,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.745835357994196,
                             "lng": -73.98807133259928
                         }
                     ],
                     "distance": 348,
                     "postalCode": "10001",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "18 W 29th St (at Broadway)",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "venuePage": {
                     "id": "40067874"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4ff2459fe4b0a148f89af102",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "874 Avenue of the Americas",
                     "crossStreet": "at W 31st St",
                     "lat": 40.7477283,
                     "lng": -73.9890832,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7477283,
                             "lng": -73.9890832
                         }
                     ],
                     "distance": 294,
                     "postalCode": "10001",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "874 Avenue of the Americas (at W 31st St)",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1043415",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-874-6th-ave-new-york/1043415?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1043415",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4b3a52ccf964a520a36425e3",
                 "name": "Best Bagel & Coffee",
                 "location": {
                     "address": "225 W 35th St",
                     "crossStreet": "btw 7th & 8th Ave",
                     "lat": 40.752168,
                     "lng": -73.991066,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.752168,
                             "lng": -73.991066
                         }
                     ],
                     "distance": 617,
                     "postalCode": "10001",
                     "cc": "US",
                     "neighborhood": "Midtown,",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "225 W 35th St (btw 7th & 8th Ave)",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d179941735",
                         "name": "Bagel Shop",
                         "pluralName": "Bagel Shops",
                         "shortName": "Bagels",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/bagels_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4bf5663994af2d7f15a93b72",
                 "name": "Andrews Coffee Shop",
                 "location": {
                     "address": "463 7th Ave",
                     "crossStreet": "at W 35th St.",
                     "lat": 40.751499154072285,
                     "lng": -73.99018245446217,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.751499154072285,
                             "lng": -73.99018245446217
                         }
                     ],
                     "distance": 511,
                     "postalCode": "10018",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "463 7th Ave (at W 35th St.)",
                         "New York, NY 10018",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d147941735",
                         "name": "Diner",
                         "pluralName": "Diners",
                         "shortName": "Diner",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/diner_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "venuePage": {
                     "id": "58938570"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "53a96e0d498ec87c4206955c",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "48 East 33rd Street",
                     "crossStreet": "at E 33rd St",
                     "lat": 40.7464872,
                     "lng": -73.9825769,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7464872,
                             "lng": -73.9825769
                         }
                     ],
                     "distance": 338,
                     "postalCode": "10016",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "48 East 33rd Street (at E 33rd St)",
                         "New York, NY 10016",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1089559",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-48-e-33rd-st-new-york/1089559?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1089559",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "437216316"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "49c406a8f964a5208d561fe3",
                 "name": "Brooklyn Bagel & Coffee Co.",
                 "location": {
                     "address": "286 8th Ave",
                     "crossStreet": "btwn W 24th & W 25th St",
                     "lat": 40.746236606826656,
                     "lng": -73.99793054220713,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.746236606826656,
                             "lng": -73.99793054220713
                         }
                     ],
                     "distance": 1059,
                     "postalCode": "10001",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "286 8th Ave (btwn W 24th & W 25th St)",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d179941735",
                         "name": "Bagel Shop",
                         "pluralName": "Bagel Shops",
                         "shortName": "Bagels",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/bagels_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "460ab8cdf964a520f1441fe3",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "327 Park Ave S",
                     "crossStreet": "btwn E 24th & E 25th St",
                     "lat": 40.74097,
                     "lng": -73.98557,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.74097,
                             "lng": -73.98557
                         }
                     ],
                     "distance": 827,
                     "postalCode": "10010",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "327 Park Ave S (btwn E 24th & E 25th St)",
                         "New York, NY 10010",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1089164",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-327-park-ave-s-new-york/1089164?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1089164",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4c24b32cf7ced13a0b33236d",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "551 Fashion Ave",
                     "crossStreet": "at W 39th St",
                     "lat": 40.7542133,
                     "lng": -73.9879328,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7542133,
                             "lng": -73.9879328
                         }
                     ],
                     "distance": 673,
                     "postalCode": "10018",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "551 Fashion Ave (at W 39th St)",
                         "New York, NY 10018",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1043501",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-551-fashion-ave-new-york/1043501?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1043501",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "56229913498efe46cf97581f",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "356 7th Ave",
                     "crossStreet": "at W 30th St",
                     "lat": 40.7484046,
                     "lng": -73.99281309999999,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7484046,
                             "lng": -73.99281309999999
                         }
                     ],
                     "distance": 599,
                     "postalCode": "10001",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "356 7th Ave (at W 30th St)",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d16d941735",
                         "name": "Café",
                         "pluralName": "Cafés",
                         "shortName": "Café",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/cafe_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1045020",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-356-7th-ave-new-york/1045020?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1045020",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "439466323"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "3fd66200f964a52008e91ee3",
                 "name": "Irving Farm Coffee Roasters",
                 "location": {
                     "address": "71 Irving Pl",
                     "crossStreet": "btwn E 18th & E 19th St",
                     "lat": 40.73671618830131,
                     "lng": -73.98681688095093,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.73671618830131,
                             "lng": -73.98681688095093
                         }
                     ],
                     "distance": 1304,
                     "postalCode": "10003",
                     "cc": "US",
                     "neighborhood": "Gramercy Park",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "71 Irving Pl (btwn E 18th & E 19th St)",
                         "New York, NY 10003",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d16d941735",
                         "name": "Café",
                         "pluralName": "Cafés",
                         "shortName": "Café",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/cafe_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4b9fa61df964a520943137e3",
                 "name": "FCB Coffee Bar",
                 "location": {
                     "address": "100 W 33rd St",
                     "lat": 40.74879242943224,
                     "lng": -73.98857495144367,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.74879242943224,
                             "lng": -73.98857495144367
                         }
                     ],
                     "distance": 246,
                     "postalCode": "10001",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "100 W 33rd St",
                         "New York, NY 10001",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4e6fe48c1fc7d3fc71285ec2",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "12 E 46th St",
                     "crossStreet": "btwn Madison & 5th Ave",
                     "lat": 40.7554338,
                     "lng": -73.9782714,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7554338,
                             "lng": -73.9782714
                         }
                     ],
                     "distance": 1002,
                     "postalCode": "10017",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "12 E 46th St (btwn Madison & 5th Ave)",
                         "New York, NY 10017",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1043308",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-12-e-46th-st-new-york/1043308?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1043308",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4b0ea0f0f964a520175923e3",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "58 W 44th St",
                     "crossStreet": "btwn 5th & 6th Ave",
                     "lat": 40.7558258,
                     "lng": -73.9826362,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7558258,
                             "lng": -73.9826362
                         }
                     ],
                     "distance": 866,
                     "postalCode": "10036",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "58 W 44th St (btwn 5th & 6th Ave)",
                         "New York, NY 10036",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1043187",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-58-w-44th-st-new-york/1043187?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1043187",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "59ce5ad9a2a6ce39476dbf1d",
                 "name": "Blue Bottle Coffee",
                 "location": {
                     "address": "10 E 53rd St",
                     "crossStreet": "5th Ave",
                     "lat": 40.759464727998854,
                     "lng": -73.97567156958826,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.759464727998854,
                             "lng": -73.97567156958826
                         }
                     ],
                     "distance": 1494,
                     "postalCode": "10022",
                     "cc": "US",
                     "neighborhood": "Midtown East",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "10 E 53rd St (5th Ave)",
                         "New York, NY 10022",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4ecc046b0e61aaf0384f19c4",
                 "name": "Think Coffee",
                 "location": {
                     "address": "73 8th Ave",
                     "crossStreet": "btwn W 13th & W 14th St",
                     "lat": 40.739479423087914,
                     "lng": -74.00270033729069,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.739479423087914,
                             "lng": -74.00270033729069
                         }
                     ],
                     "distance": 1744,
                     "postalCode": "10014",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "73 8th Ave (btwn W 13th & W 14th St)",
                         "New York, NY 10014",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "512f8233e4b04458d4385195",
                 "name": "Stumptown Coffee Roasters",
                 "location": {
                     "address": "30 W 8th St",
                     "crossStreet": "at MacDougal St",
                     "lat": 40.732797,
                     "lng": -73.997971,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.732797,
                             "lng": -73.997971
                         }
                     ],
                     "distance": 2021,
                     "postalCode": "10011",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "30 W 8th St (at MacDougal St)",
                         "New York, NY 10011",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "591c50dba9e4021d1d8029a1",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "1407 Broadway",
                     "lat": 40.7533502,
                     "lng": -73.98773030000001,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7533502,
                             "lng": -73.98773030000001
                         }
                     ],
                     "distance": 577,
                     "postalCode": "10018",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "1407 Broadway",
                         "New York, NY 10018",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d16d941735",
                         "name": "Café",
                         "pluralName": "Cafés",
                         "shortName": "Café",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/cafe_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1097926",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-1407-broadway-new-york/1097926?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1097926",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "437715299"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "519a94e3498e722d3d9ae1bf",
                 "name": "Intelligentsia Coffee",
                 "location": {
                     "address": "180 10th Ave",
                     "crossStreet": "btwn W 20th & W 21st St",
                     "lat": 40.745925923501794,
                     "lng": -74.00537634340776,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.745925923501794,
                             "lng": -74.00537634340776
                         }
                     ],
                     "distance": 1682,
                     "postalCode": "10011",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "180 10th Ave (btwn W 20th & W 21st St)",
                         "New York, NY 10011",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "venuePage": {
                     "id": "147036863"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "55e9f118498eda28f897f9e3",
                 "name": "Kobrick Coffee Co.",
                 "location": {
                     "address": "24 9th Ave",
                     "crossStreet": "btwn W 13th & 14th St",
                     "lat": 40.74033655451874,
                     "lng": -74.00569308386368,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.74033655451874,
                             "lng": -74.00569308386368
                         }
                     ],
                     "distance": 1910,
                     "postalCode": "10014",
                     "cc": "US",
                     "neighborhood": "Meatpacking District",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "24 9th Ave (btwn W 13th & 14th St)",
                         "New York, NY 10014",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "venuePage": {
                     "id": "141608237"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "5978deace7a23763058f916f",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "485 Lexington Ave",
                     "crossStreet": "46th St",
                     "lat": 40.7542603,
                     "lng": -73.97358700000001,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.7542603,
                             "lng": -73.97358700000001
                         }
                     ],
                     "distance": 1212,
                     "postalCode": "10017",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "485 Lexington Ave (46th St)",
                         "New York, NY 10017",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d16d941735",
                         "name": "Café",
                         "pluralName": "Cafés",
                         "shortName": "Café",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/cafe_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1089441",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-485-lexington-ave-new-york/1089441?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1089441",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "446034771"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4f3a9e05bb3d2fbe725ca57a",
                 "name": "Blue Bottle Coffee",
                 "location": {
                     "address": "450 W 15th St",
                     "crossStreet": "btwn 9th & 10th Ave",
                     "lat": 40.74247264215167,
                     "lng": -74.00698238537771,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.74247264215167,
                             "lng": -74.00698238537771
                         }
                     ],
                     "distance": 1912,
                     "postalCode": "10011",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "450 W 15th St (btwn 9th & 10th Ave)",
                         "New York, NY 10011",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "581b3b5b5c3b5845451935e0",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "762 7th Ave",
                     "crossStreet": "West 50th Street",
                     "lat": 40.76125,
                     "lng": -73.9833589,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.76125,
                             "lng": -73.9833589
                         }
                     ],
                     "distance": 1444,
                     "postalCode": "10019",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "762 7th Ave (West 50th Street)",
                         "New York, NY 10019",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1097646",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-762-7th-ave-new-york/1097646?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1097646",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "437216324"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "594406037dc9e17127add965",
                 "name": "Optimistic Coffee",
                 "location": {
                     "lat": 40.755166511752776,
                     "lng": -73.99064463803805,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.755166511752776,
                             "lng": -73.99064463803805
                         }
                     ],
                     "distance": 860,
                     "postalCode": "10018",
                     "cc": "US",
                     "neighborhood": "Garment District",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "New York, NY 10018",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "3fd66200f964a52093e81ee3",
                 "name": "Empire Coffee & Tea",
                 "location": {
                     "address": "568 9th Ave",
                     "crossStreet": "Between 41st & 42nd street",
                     "lat": 40.75801695174228,
                     "lng": -73.99289785463402,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.75801695174228,
                             "lng": -73.99289785463402
                         }
                     ],
                     "distance": 1230,
                     "postalCode": "10036",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "568 9th Ave (Between 41st & 42nd street)",
                         "New York, NY 10036",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "venuePage": {
                     "id": "119534409"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4ae33a3df964a520f99121e3",
                 "name": "Think Coffee",
                 "location": {
                     "address": "123 4th Ave",
                     "crossStreet": "btwn 12th & 13th St",
                     "lat": 40.733042228370216,
                     "lng": -73.99001062032393,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.733042228370216,
                             "lng": -73.99001062032393
                         }
                     ],
                     "distance": 1747,
                     "postalCode": "10003",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "123 4th Ave (btwn 12th & 13th St)",
                         "New York, NY 10003",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "49c192c5f964a520b6551fe3",
                 "name": "Joe The Art of Coffee",
                 "location": {
                     "address": "405 W 23rd St",
                     "crossStreet": "at 9th Ave.",
                     "lat": 40.74700652916005,
                     "lng": -74.00187650246409,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.74700652916005,
                             "lng": -74.00187650246409
                         }
                     ],
                     "distance": 1373,
                     "postalCode": "10011",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "405 W 23rd St (at 9th Ave.)",
                         "New York, NY 10011",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "4aa512c5f964a5205e4720e3",
                 "name": "Joe Coffee Company",
                 "location": {
                     "address": "9 E 13th St",
                     "crossStreet": "btwn 5th Ave & University Pl",
                     "lat": 40.735171394504654,
                     "lng": -73.99326208671994,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.735171394504654,
                             "lng": -73.99326208671994
                         }
                     ],
                     "distance": 1604,
                     "postalCode": "10003",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "9 E 13th St (btwn 5th Ave & University Pl)",
                         "New York, NY 10003",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "5783fac6cd10361b6f2ca3fc",
                 "name": "Peet's Coffee",
                 "location": {
                     "address": "853 Broadway,",
                     "lat": 40.734693,
                     "lng": -73.990975,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.734693,
                             "lng": -73.990975
                         }
                     ],
                     "distance": 1589,
                     "postalCode": "10003",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "853 Broadway,",
                         "New York, NY 10003",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "referralId": "v-1573086343",
                 "hasPerk": false
             },
             {
                 "id": "5877a63837da1d2355dd9c92",
                 "name": "Gregorys Coffee",
                 "location": {
                     "address": "485 Madison Ave",
                     "crossStreet": "52nd Street",
                     "lat": 40.75886,
                     "lng": -73.97467,
                     "labeledLatLngs": [
                         {
                             "label": "display",
                             "lat": 40.75886,
                             "lng": -73.97467
                         }
                     ],
                     "distance": 1490,
                     "postalCode": "10022",
                     "cc": "US",
                     "city": "New York",
                     "state": "NY",
                     "country": "United States",
                     "formattedAddress": [
                         "485 Madison Ave (52nd Street)",
                         "New York, NY 10022",
                         "United States"
                     ]
                 },
                 "categories": [
                     {
                         "id": "4bf58dd8d48988d1e0931735",
                         "name": "Coffee Shop",
                         "pluralName": "Coffee Shops",
                         "shortName": "Coffee Shop",
                         "icon": {
                             "prefix": "https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_",
                             "suffix": ".png"
                         },
                         "primary": true
                     }
                 ],
                 "delivery": {
                     "id": "1097634",
                     "url": "https://www.seamless.com/menu/gregorys-coffee-485-madison-ave-new-york/1097634?affiliate=1131&utm_source=foursquare-affiliate-network&utm_medium=affiliate&utm_campaign=1131&utm_content=1097634",
                     "provider": {
                         "name": "seamless",
                         "icon": {
                             "prefix": "https://fastly.4sqi.net/img/general/cap/",
                             "sizes": [
                                 40,
                                 50
                             ],
                             "name": "/delivery_provider_seamless_20180129.png"
                         }
                     }
                 },
                 "venuePage": {
                     "id": "437464635"
                 },
                 "referralId": "v-1573086343",
                 "hasPerk": false
             }
         ]
     }
 }
 */
