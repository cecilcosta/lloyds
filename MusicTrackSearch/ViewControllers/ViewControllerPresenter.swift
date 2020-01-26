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
    
    func search(_ query: String, handler: @escaping ([Track]) -> () ) {
        trackMananger = TrackManager(searchTerm: query)
        trackMananger?.nextPage{[weak self] tracks in
            self?.tracks = []
            self?.tracks.append(contentsOf: tracks)
            handler(tracks)
        }
    }
    
    func nextPage(handler: @escaping ([Track]) -> () ) {
        trackMananger?.nextPage{[weak self] tracks in
            self?.tracks.append(contentsOf: tracks)
            handler(tracks)
        }
        
    }
    
    func track(at position: Int ) -> Track? {
        guard position >= 0 && position < tracks.count else {
            return nil
        }
        return tracks[position]
    }
    
}
