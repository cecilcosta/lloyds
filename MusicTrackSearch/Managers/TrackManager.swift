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
    private var lastPage = 0
    private let limit = 30
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
    }
    
    func nextPage(handler: @escaping ([Track]) -> ()) {
        // TODO HTML Entities
        if let url = URL(string: "https://ws.audioscrobbler.com/2.0/?method=track.search&track=\(searchTerm)&api_key=\(apiKey)&format=json&page=\(lastPage + 1)&limit=\(limit)") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                // TODO
                if let data = data,
                    let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any],
                    let results = json["results"] as? [String: Any] {
                    
                    if let query = results["opensearch:Query"] as? [String:Any],
                        let startPage = query["startPage"] as? String,
                        let page = Int(startPage){
                        // TODO control start page
                        self.lastPage = page
                    }
                    
                    if let trackMatches = results["trackmatches"] as? [String: Any],
                    let tracks = trackMatches["track"] as? [ [String:Any] ]
                    {
                        // TODO change t to something else
                        // TODO MApper
                        let finalTracks = tracks.map {t -> Track in
                            let track = Track()
                            track.artist = t["artist"] as? String
                            track.name = t["name"] as? String
                            track.listeners = Int(t["listeners"] as? String ?? "0")
                            track.mbid = t["mbid"] as? String
                            track.streamable = t["streamable"] as? String
                            track.url = t["url"] as? String
                            track.image = t["image"] as? [[String:String]] ?? []
                            return track
                        }
                        handler(finalTracks)
                    }
                        
                }
            }.resume()
        }
    }
    
}
