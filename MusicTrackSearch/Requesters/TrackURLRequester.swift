//
//  TrackURLRequester.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation

typealias JSON = [String:Any]
typealias RequestResult = Result<JSON, MusicError>
typealias RequestHandler = (RequestResult) -> ()

protocol TrackURLRequester {
    
    
    
    func request(searchTerms: String, page: Int, handler: @escaping RequestHandler)
}
