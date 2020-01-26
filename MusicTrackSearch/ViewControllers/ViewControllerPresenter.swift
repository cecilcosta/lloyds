//
//  ViewControllerPresenter.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

class ViewControllerPresenter {
    
    var trackMananger: TrackManager?
    private var tracks = [Track]()
    var trackCount: Int {
        self.tracks.count
    }
    
    func search(_ query: String, handler: @escaping (Result<[Track], MusicError>) -> () ) {
        trackMananger = TrackManager(searchTerm: query)
        trackMananger?.nextPage{[weak self] result in
            switch result {
            case .success(let tracks):
                self?.tracks = []
                self?.tracks.append(contentsOf: tracks)
                fallthrough
            case .failure:
                handler(result)
            }
            
        }
    }
    
    func nextPage(handler: @escaping (Result<[Track], MusicError>) -> () ) {
        trackMananger?.nextPage{[weak self] result in
            switch result {
            case .success(let tracks):
                self?.tracks.append(contentsOf: tracks)
                fallthrough
            case .failure:
                handler(result)
            }
        }
        
    }
    
    func track(at position: Int ) -> Track? {
        guard position >= 0 && position < tracks.count else {
            return nil
        }
        return tracks[position]
    }
    
}
