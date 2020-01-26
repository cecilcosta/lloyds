//
//  CellInfo.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
import UIKit

class CellInfo {
    var label: String
    var cellType: UITableViewCell.CellStyle
    var cellIdentifier: String
    
    
    init(label: String,
    cellType: UITableViewCell.CellStyle,
    cellIdentifier: String) {
        self.label = label
        self.cellType = cellType
        self.cellIdentifier = cellIdentifier
    }
}

class TextCell:CellInfo {
    var field: WritableKeyPath<Track, String?>
    
    init(label: String,
    cellIdentifier: String,
    field: WritableKeyPath<Track, String?>) {
        self.field = field
        super.init(label: label, cellType: .value1, cellIdentifier: cellIdentifier)
    }
}
