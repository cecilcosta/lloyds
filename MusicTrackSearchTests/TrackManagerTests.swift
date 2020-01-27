//
//  TrackManagerTests.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 27/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import XCTest
@testable import MusicTrackSearch

class TrackManagerTests: XCTestCase {
    
    

    override func setUp() {
        
    }

    override func tearDown() {

    }

    func testSearchMussashiOnePage() {
        
        let fulfiller = expectation(description: "result expectation")
        let trackManager = TrackManager(searchTerm: "mussashi")
        let requester = MockTrackUrlRequester()
        let serverResponse = mussashiFirstPage()
        requester.results = [.success(serverResponse)]
        trackManager.requester = requester
        trackManager.nextPage { (result) in
            switch result {
            case .success(let trackPage):
                XCTAssertEqual(trackPage.pageNum, 1)
                XCTAssertEqual(trackPage.tracks.count, 2)
                XCTAssertNotNil(trackPage.tracks.first)
                let firstTrack = trackPage.tracks.first!
                
                XCTAssertEqual(firstTrack.name, "Mussashimaru")
                XCTAssertEqual(firstTrack.image.count, 4)
                XCTAssertEqual(trackManager.lastPage, 1)
                fulfiller.fulfill()
            case .failure:
                assertionFailure("Shouldn't give error")
            }
        }
        
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error)
        }
        
    }
    
    func testSearchMussashiTwoPages() {
        
        let fulfiller = expectation(description: "result expectation")
        let trackManager = TrackManager(searchTerm: "mussashi")
        let requester = MockTrackUrlRequester()
        let serverResponse = mussashiFirstPage()
        let serverResponse2 = mussashiSecondPage()
        requester.results = [.success(serverResponse), .success(serverResponse2)]
        trackManager.requester = requester
        trackManager.nextPage { (firstResult) in
            switch firstResult {
            case .success:
                trackManager.nextPage { (secondResult) in
                    switch secondResult {
                    case .success:
                        assertionFailure("No success as there is no page 2")
                    case .failure(.wrongPage):
                        XCTAssertEqual(trackManager.lastPage, 1)
                        fulfiller.fulfill()
                    case .failure:
                        assertionFailure("Wrong error code")
                    }
                }
            case .failure:
                assertionFailure("Shouldn't give any errors on page 1")
            }
        }
        
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error)
        }
        
    }
    
    func testNirvanaTwoPages() {
        let fulfiller = expectation(description: "result expectation")
        let trackManager = TrackManager(searchTerm: "smells like teen spirit")
        let requester = MockTrackUrlRequester()
        let serverResponse = nirvanaFirstPage()
        let serverResponse2 = nirvanaSecondPage()
        requester.results = [.success(serverResponse), .success(serverResponse2)]
        trackManager.requester = requester
        trackManager.nextPage { (firstResult) in
            switch firstResult {
            case .success:
                trackManager.nextPage { (secondResult) in
                    switch secondResult {
                    case .success:
                        XCTAssertEqual(trackManager.lastPage, 2)
                        fulfiller.fulfill()
                    case .failure:
                        assertionFailure("Not supposed to fail on page 2")
                    }
                }
            case .failure:
                assertionFailure("Shouldn't give any errors on page 1")
            }
        }
        
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error)
        }
    }

    func testBrokenJson() {
        let fulfiller = expectation(description: "result expectation")
        let trackManager = TrackManager(searchTerm: "happy birthday to you")
        let requester = MockTrackUrlRequester()
        
        requester.results = [.failure(.requestError)]
        trackManager.requester = requester
        trackManager.nextPage { (result) in
            switch result {
            case .success:
                assertionFailure("Shouldn't receive succes on broken json")
            case .failure(.requestError):
                XCTAssertEqual(trackManager.lastPage, 0)
                fulfiller.fulfill()
            case .failure:
                assertionFailure("Wrong error code")
                
            }
        }
        
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error)
        }
    }

}
