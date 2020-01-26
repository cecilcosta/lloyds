//
//  LastFMTrackURLRequester.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
import Alamofire

class LastFMTrackURLRequester: TrackURLRequester {
    
    private let baseURL = "https://ws.audioscrobbler.com/2.0/"
    private let apiKey =  ""
    private let limit = 30
    
    func request(searchTerms: String, page: Int, handler: @escaping RequestHandler) {
        
        guard let url = URL(string: baseURL) else {
            handler(.failure(.requestError))
            return
        }
        
        AF.request(url,
                   method: .get,
                   parameters: [
                    "method": "track.search",
                    "track": searchTerms,
                    "api_key": apiKey,
                    "format": "json",
                    "page": "\(page + 1)",
                    "limit": "\(limit)"
        ]).responseJSON {[weak self] (dataResponse) in
            self?.processResponse(response: dataResponse, handler: handler)
        }
    }
    
    private func processResponse(response: AFDataResponse<Any>, handler: RequestHandler) {
        switch response.result {
        case .success(let json as JSON):
            handler(.success(json))
        default:
            handler(.failure(.requestError))
        }
    }
    
}

