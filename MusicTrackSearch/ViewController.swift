//
//  ViewController.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    var trackMananger: TrackManager?
    var tracks = [Track]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Bar was called.")
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            trackMananger = TrackManager(searchTerm: text)
            trackMananger?.nextPage{[weak self] tracks in
                self?.tracks.append(contentsOf: tracks)
                print(self?.tracks.count ?? "Error")
            }
        }
    }
}
