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

    override func setUp() {
        viewControllerPresenter = ViewControllerPresenter()
        viewControllerPresenter.preferredRequester = LastFMTrackURLRequester()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRequestReturnsASuccessPage() {
        let fulfiller = expectation(description: "Waiting for the callback")
        
        viewControllerPresenter.search("smells") { result in
            switch result {
            case .success(let trackPage):
                XCTAssertEqual(trackPage.pageNum, 1)
                XCTAssertEqual(trackPage.tracks.count, 30)
                
                fulfiller.fulfill()
            case .failure:
                assertionFailure("Received a failure, expecting a success")
            }
        }
        
        waitForExpectations(timeout: TimeInterval(10)) { (error) in
            XCTAssertNil(error, "There was an error")
        }
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
