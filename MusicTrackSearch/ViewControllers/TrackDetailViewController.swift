//
//  TrackDetailViewController.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import UIKit

class TrackDetailViewController: UIViewController {
    
    class CellInfo {
        var label: String
        var cellType: UITableViewCell.Type
        var cellIdentifier: String
        var cellHeight: CGFloat
        
        
        init(label: String,
        cellType: UITableViewCell.Type,
        cellIdentifier: String,
        cellHeight: CGFloat) {
            self.label = label
            self.cellType = cellType
            self.cellIdentifier = cellIdentifier
            self.cellHeight = cellHeight
        }
    }
    
    class TextCell:CellInfo {
        var field: ReferenceWritableKeyPath<Track, String?>
        
        init(label: String,
        cellType: UITableViewCell.Type,
        cellIdentifier: String,
        cellHeight: CGFloat,
        field: ReferenceWritableKeyPath<Track, String?>) {
            self.field = field
            super.init(label: label, cellType: cellType, cellIdentifier: cellIdentifier, cellHeight: cellHeight)
        }
    }
    
    let cells: [CellInfo] = [
        TextCell(label: "Track name", cellType: UITableViewCell.self, cellIdentifier: "trackCell", cellHeight: UITableView.automaticDimension, field: \Track.name),
        TextCell(label: "Artist name", cellType: UITableViewCell.self, cellIdentifier: "trackCell", cellHeight: UITableView.automaticDimension, field: \Track.artist)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellInfo.cellIdentifier) ?? UITableViewCell(style: .default, reuseIdentifier: cellInfo.cellIdentifier)
     
        if let cellInfo = cellInfo as? TextCell {
            cell.textLabel?.text = track[keyPath: cellInfo.field]
        }
        
        
        return cell
        
    }
}
