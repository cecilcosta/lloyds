//
//  MockTrackManager.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 27/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
@testable import MusicTrackSearch

class MockTrackManager: TrackManager {
    
     var results: [TrackResult]!
    
    override func nextPage(handler: @escaping TrackHandler) {
        DispatchQueue(label: "testQueue").async {
            let result = self.results.removeFirst()
            
            handler(result)
        }
        
    }
}
