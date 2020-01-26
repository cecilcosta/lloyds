//
//  TrackManager.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
import Alamofire

class TrackManager {

    private let searchTerm: String
    private let apiKey =  ""
    private var lastPage = 0
    private let limit = 30
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
    }
    
    func nextPage(handler: @escaping ([Track]) -> ()) {
        
        guard let url = URL(string: "https://ws.audioscrobbler.com/2.0/") else {
            return // TODO error
        }
        AF.request(url,
                   method: .get,
                   parameters: [
                    "method": "track.search",
                    "track": searchTerm,
                    "api_key": apiKey,
                    "format": "json",
                    "page": "\(lastPage + 1)",
                    "limit": "\(limit)"
        ]).responseJSON { (dataResponse) in
            
            switch dataResponse.result {
            case .success(let json as [String:Any]):
                guard let results = json["results"] as? [String: Any] else {
                    // TODO Error
                    return
                }
                
                if let query = results["opensearch:Query"] as? [String:Any],
                    let startPage = query["startPage"] as? String,
                    let page = Int(startPage){
                    // TODO control start page
                    self.lastPage = page
                }
                
                if let trackMatches = results["trackmatches"] as? [String: Any],
                let tracks = trackMatches["track"] as? [ [String:Any] ]
                {
                    let finalTracks = tracks.map(TrackMapper.map)
                    handler(finalTracks)
                }
            default:
                print("error")
                // TODO Error
            }

            
        }
        
        
    }
    
}
