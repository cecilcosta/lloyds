//
//  ViewControllerPresenterTests.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import XCTest
@testable import MusicTrackSearch

class ViewControllerPresenterTests: XCTestCase {
    
    var viewControllerPresenter:ViewControllerPresenter!
    var mockTrackManager: MockTrackManager!

    override func setUp() {
        viewControllerPresenter = ViewControllerPresenter()
        mockTrackManager = MockTrackManager(searchTerm: "smells like teen spirut")
        
    }

    func testRequestFirstPage() {
        let fulfiller = expectation(description: "Waiting for the callback")
        let trackPage = nirvanaTracksFirstPage()
        mockTrackManager.results = [.success(trackPage)]
        
        viewControllerPresenter.search("smells like teen spirut", trackManager: mockTrackManager) { result in
            switch result {
            case .success(let trackPage):
                XCTAssertEqual(self.viewControllerPresenter.trackCount, 3)
                XCTAssertEqual(trackPage.pageNum, 1)
                XCTAssertEqual(trackPage.tracks.count, 3)
                XCTAssertNotNil(trackPage.tracks.first)
                let firstTrack = trackPage.tracks.first!
                XCTAssertEqual(firstTrack.mbid, "0ebe2d92-a11d-4b2b-9922-806383074ed7")
                fulfiller.fulfill()
            case .failure:
                assertionFailure("Received a failure, expecting a success")
            }
        }
        
        waitForExpectations(timeout: TimeInterval(10)) { (error) in
            XCTAssertNil(error, "There was an error")
        }
        
    }
    
    func testRequestSecondPage() {
        let fulfiller = expectation(description: "Waiting for the callback")
        let trackPage1 = nirvanaTracksFirstPage()
        let trackPage2 = nirvanaTracksSecondPage()
        mockTrackManager.results = [.success(trackPage1), .success(trackPage2)]
        
        viewControllerPresenter.search("smells like teen spirut", trackManager: mockTrackManager) { firstResult in
            switch firstResult {
            case .success:
                self.viewControllerPresenter.nextPage { secondResult in
                    switch secondResult {
                        case .success(let trackPage):
                            XCTAssertEqual(self.viewControllerPresenter.trackCount, 6)
                            XCTAssertEqual(trackPage.pageNum, 2)
                            XCTAssertEqual(trackPage.tracks.count, 3)
                            XCTAssertNotNil(trackPage.tracks.first)
                            let firstTrack = trackPage.tracks.first!
                            XCTAssertEqual(firstTrack.mbid, "Happy id")
                            fulfiller.fulfill()
                        case .failure:
                            assertionFailure("Received a failure, expecting a success on page 2")
                        }
                    }
            case .failure:
                assertionFailure("Received a failure, expecting a success on page 1")
            }
        }
        
        waitForExpectations(timeout: TimeInterval(10)) { (error) in
            XCTAssertNil(error, "There was an error")
        }
        
    }

    

}
