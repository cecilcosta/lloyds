//
//  TrackDetailViewController.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 25/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import UIKit

class TrackDetailViewController: UIViewController {
    
    @IBOutlet weak var artistLabel: UILabel!
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()
        artistLabel.text = track.artist
        
    }

}
