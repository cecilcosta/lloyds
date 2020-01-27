//
//  MockTrackUrlRequester.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 27/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
@testable import MusicTrackSearch


class MockTrackUrlRequester: TrackURLRequester {
    
    var results: [RequestResult]!
    
    
    func request(searchTerms: String, page: Int, handler: @escaping RequestHandler) {
        DispatchQueue(label: "testQueue").async {
            let result = self.results.removeFirst()
            
            handler(result)
        }
    }
    
    
}
