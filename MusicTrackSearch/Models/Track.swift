//
//  Track.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

struct Image {
    var url: URL
    var size: String
}

struct Track {
    
    var artist: String?
    var name: String?
    var url: String?
    var streamable: String?
    var listeners: Int?
    var image: [Image] = [] 
    var mbid: String?
    
    func smallPictureUrl() -> URL? {
        image.reduce(nil) { (result, image) -> URL? in
            return image.size == "small" ? image.url : result
        }
    }
    
}
