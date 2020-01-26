//
//  Track.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

struct Track {
    
    var artist: String?
    var name: String?
    var url: String?
    var streamable: String?
    var listeners: Int?
    var image: [[String:String]] = [] // TODO class/Struct
    var mbid: String?
    
}
