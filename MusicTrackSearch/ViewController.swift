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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Bar was called.")
    }
}
