//
//  TrackDetailViewController.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import UIKit

class TrackDetailViewController: UIViewController {
    
    private let cells: [CellInfo] = [
        TextCell(label: "Track name", cellIdentifier: "trackCell", field: \Track.name),
        TextCell(label: "Artist name", cellIdentifier: "trackCell", field: \Track.artist),
        TextCell(label: "MusicBrainz id", cellIdentifier: "trackCell", field: \Track.mbid)
    ]

    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}


extension TrackDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellInfo = cells[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellInfo.cellIdentifier) ?? UITableViewCell(style: cellInfo.cellType, reuseIdentifier: cellInfo.cellIdentifier)
     
        if let cellInfo = cellInfo as? TextCell {
            cell.textLabel?.text = cellInfo.label
            cell.detailTextLabel?.text = track[keyPath: cellInfo.field]
        }
        
        
        return cell
        
    }
}
