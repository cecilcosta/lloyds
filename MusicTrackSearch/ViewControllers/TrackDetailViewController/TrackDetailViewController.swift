//
//  TrackDetailViewController.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import UIKit

class TrackDetailViewController: UIViewController {
    
    private static let textCellId = "textCell"
    private static let actionCellId = "actionCell"
    
    private let cells: [CellInfo] = [
        TextCell(label: "Track name", cellIdentifier: textCellId, field: \Track.name),
        TextCell(label: "Artist name", cellIdentifier: textCellId, field: \Track.artist),
        TextCell(label: "MusicBrainz id", cellIdentifier: textCellId, field: \Track.mbid),
        ActionCell(label: "Open its URL", cellIdentifier: actionCellId, field: \Track.url)
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
     
        cell.textLabel?.text = cellInfo.label
        
        if let cellInfo = cellInfo as? TextCell {
            cell.detailTextLabel?.text = track[keyPath: cellInfo.field]
            cell.selectionStyle = .none
        }
        
        
        return cell
        
    }
}

extension TrackDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let actionPosition = 3
       tableView.deselectRow(at: indexPath, animated: true)
        guard indexPath.row == actionPosition,
            let urlString = track.url,
            let url = URL(string: urlString) else {
            return
        }
        
        UIApplication.shared.open(url)
    }
}
