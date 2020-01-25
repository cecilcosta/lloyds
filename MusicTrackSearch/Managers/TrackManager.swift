//
//  TrackManager.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

class TrackManager {
    
    var tracks = [Track]()
    private let searchTerm: String
    private let apiKey =  ""
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
    }
    
    func nextPage(handler: @escaping ([Track]) -> ()) {
        // TODO HTML Entities
        if let url = URL(string: "https://ws.audioscrobbler.com/2.0/?method=track.search&track=\(searchTerm)%20like&api_key=\(apiKey)&format=json") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                // TODO
                if let data = data,
                    let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any],
                    let results = json["results"] as? [String: Any],
                    let trackMatches = results["trackmatches"] as? [String: Any],
                    let tracks = trackMatches["track"] as? [ [String:Any] ]
                    {
                        let finalTracks = tracks.map {t -> Track in
                            let track = Track()
                            track.artist = t["artist"] as? String
                            return track
                        }
                        handler(finalTracks)
                }
            }.resume()
        }
    }
    
}
