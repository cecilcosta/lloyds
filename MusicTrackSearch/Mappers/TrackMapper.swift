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
        let imageMap = map["image"] as? [[String:String]] ?? []
        let images = imageMap.map{ map -> Image? in
            guard let imageText = map["#text"],
            let imageURL = URL(string: imageText),
                let size = map["size"] else {
                    return nil
            }
            return Image(url: imageURL, size: size)
        }.filter { $0 != nil }.map { $0! }
        return Track(artist: artist, name: name, url: url,
                     streamable: streamable, listeners: listeners, image: images, mbid: mbid)
    }
}
