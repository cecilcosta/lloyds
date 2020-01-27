//
//  TestDataTrack.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 27/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
@testable import MusicTrackSearch

func nirvanaTracksFirstPage() -> TrackPage {
    let track1 = Track(artist: "Nirvana", name: "Smells Like Teen Spirit", url: "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit", streamable: nil, listeners: nil, image: [], mbid: "0ebe2d92-a11d-4b2b-9922-806383074ed7")
    let track2 = Track(artist: "Tori Amos", name: "Smells Like Teen Spirit", url: "https://www.last.fm/music/Tori+Amos/_/Smells+Like+Teen+Spirit", streamable: nil, listeners: nil, image: [], mbid: "52f28621-2aa0-4059-8815-044cace9f50f")
    let track3 = Track(artist: "Patti Smith", name: "Smells Like Teen Spirit", url: "https://www.last.fm/music/Patti+Smith/_/Smells+Like+Teen+Spirit", streamable: nil, listeners: nil, image: [], mbid: "849a119a-b38b-4b90-9168-072bcb86265c")
    
    let tracks = [track1, track2, track3]
    let trackPage = TrackPage(pageNum: 1, tracks: tracks)
    
    
    return trackPage
}


func nirvanaTracksSecondPage() -> TrackPage {
    let track1 = Track(artist: "Patti Smith", name: "Smells Like Teen Spirit - Radio Edit", url: "https://www.last.fm/music/Patti+Smith/_/Smells+Like+Teen+Spirit+-+Radio+Edit", streamable: nil, listeners: nil, image: [], mbid: "Happy id")
    let track2 = Track(artist: "David Garrett", name: "Smells Like Teen Spirit", url: "https://www.last.fm/music/David+Garrett/_/Smells+Like+Teen+Spirit", streamable: nil, listeners: nil, image: [], mbid: "ba3fd4df-7ae6-4b92-8be1-c0247f7e4fea")
    let track3 = Track(artist: "Paul Anka", name: "Smells Like Teen Spirit", url: "https://www.last.fm/music/Paul+Anka/_/Smells+Like+Teen+Spirit", streamable: nil, listeners: nil, image: [], mbid: "9c935e58-67a0-49be-b79e-89822d102ab6")
    
    let tracks = [track1, track2, track3]
    let trackPage = TrackPage(pageNum: 2, tracks: tracks)
    
    
    return trackPage
}
