//
//  ViewControllerPresenter.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

class ViewControllerPresenter {
    
    private var tracks = [Track]()
    var trackMananger: TrackManager?
    var preferredRequester: TrackURLRequester?
    var trackCount: Int {
        self.tracks.count
    }
    
    func search(_ query: String, handler: @escaping TrackHandler ) {
        trackMananger = TrackManager(searchTerm: query)
        if let preferredRequester = preferredRequester {
            trackMananger?.requester = preferredRequester
        }
        trackMananger?.nextPage{[weak self] result in
            switch result {
            case .success(let trackPage):
                self?.tracks = trackPage.tracks
                fallthrough
            case .failure:
                handler(result)
            }
            
        }
    }
    
    func nextPage(handler: @escaping TrackHandler) {
        trackMananger?.nextPage{[weak self] result in
            switch result {
            case .success(let trackPage):
                self?.tracks.append(contentsOf: trackPage.tracks)
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
