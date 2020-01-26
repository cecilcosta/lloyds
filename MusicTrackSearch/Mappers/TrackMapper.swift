//
//  TrackMapper.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

struct TrackMapper {
    static func map(from map: [String:Any]) -> Track {
        let artist = map["artist"] as? String
        let name = map["name"] as? String
        let listeners = Int(map["listeners"] as? String ?? "")
        let mbid = map["mbid"] as? String
        let streamable = map["streamable"] as? String
        let url = map["url"] as? String
        let image = map["image"] as? [[String:String]] ?? []
        return Track(artist: artist, name: name, url: url,
                     streamable: streamable, listeners: listeners, image: image, mbid: mbid)
    }
}

