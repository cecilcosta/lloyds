//
//  TrackManager.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

typealias TrackHandler = (Result<TrackPage, MusicError>) -> ()

class TrackManager {
    
    private let searchTerm: String
    private var lastPage = 0
    
    var requester: TrackURLRequester = LastFMTrackURLRequester()
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
    }
    
    func nextPage(handler: @escaping TrackHandler) {
        requester.request(searchTerms: searchTerm, page: lastPage) { [weak self] result in
            self?.processResponse(response: result, handler: handler)
        }
        
    }
    
    private func processResponse(response: RequestResult, handler: TrackHandler) {
        switch response {
        case .success(let json):
            guard let results = json["results"] as? [String: Any] else {
                handler(.failure(.requestError))
                return
            }
            
            if let query = results["opensearch:Query"] as? [String:Any],
                let startPage = query["startPage"] as? String,
                let page = Int(startPage){
                guard page > self.lastPage else {
                    handler(.failure(.wrongPage))
                    return
                }
                self.lastPage = page
            }
            
            if let trackMatches = results["trackmatches"] as? [String: Any],
            let tracks = trackMatches["track"] as? [ [String:Any] ]
            {
                let finalTracks = tracks.map(TrackMapper.map)
                let trackPage = TrackPage(pageNum: self.lastPage, tracks: finalTracks)
                handler(.success(trackPage))
            }
        default:
            handler(.failure(.requestError))
        }
    }
    
}
