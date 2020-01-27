//
//  TrackManager.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

typealias TrackResult = Result<TrackPage, MusicError> 
typealias TrackHandler = (TrackResult) -> ()

class TrackManager {
    
    private let searchTerm: String
    private(set) var lastPage = 0
    
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
            
            guard let trackMatches = results["trackmatches"] as? [String: Any],
                let tracks = trackMatches["track"] as? [ [String:Any] ]
                else {
                    handler(.failure(.requestError))
                    return
            }
            
            let finalTracks = tracks.map(TrackMapper.map)

            
            
            
            guard let query = results["opensearch:Query"] as? [String:Any],
                let startPage = query["startPage"] as? String,
                let page = Int(startPage),
                page > self.lastPage else {
                    handler(.failure(.wrongPage))
                    return
            }
            
            // The first page is the only one which can be accepted as empty. If there an empty page with no tracks it means that we overtook the limit of pages.
            guard page == 1 || finalTracks.count > 0 else {
                handler(.failure(.wrongPage))
                return
            }
            
            
            self.lastPage = page
            let trackPage = TrackPage(pageNum: self.lastPage, tracks: finalTracks)
            handler(.success(trackPage))
            
        default:
            handler(.failure(.requestError))
        }
    }
    
}
