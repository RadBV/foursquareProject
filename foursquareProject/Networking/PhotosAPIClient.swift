//
//  PhotosAPIClient.swift
//  foursquareProject
//
//  Created by Radharani Ribas-Valongo on 11/11/19.
//  Copyright © 2019 Radharani Ribas-Valongo. All rights reserved.
//

import Foundation

class PhotosAPIClient {
    private init() {}
    static let shared = PhotosAPIClient()
    
    func getEpisodes(id: String, completionHandler: @escaping (Result<[Photos],ErrorHandling>) -> Void ) {
        
        let urlStr = "https://api.foursquare.com/v2/venues/\(id)/photos?&client_id=\(Secrets.apiID)&client_secret=\(Secrets.apiKey)&v=20191104"
        
        NetworkManager.shared.fetchData(urlStr: urlStr) { (result) in
            switch result {
            case .failure(let appError):
                completionHandler(.failure(appError))
            case .success(let data):
                do {
                    let photoData = try JSONDecoder().decode(PhotoWrapper2X.self, from: data)
                    completionHandler(.success(photoData.response.photos.items))
                } catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
}
