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
    @IBOutlet weak var tableView: UITableView!
    
    var trackMananger: TrackManager?
    var tracks = [Track]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TrackDetailViewController,
            let track = sender as? Track {
            destination.track = track
        }
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
                self?.tracks.removeAll()
                self?.tracks.append(contentsOf: tracks)
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
                
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    var cellIdentifier:String {
        "cell"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = self.tracks[indexPath.row].name
        cell.detailTextLabel?.text = self.tracks[indexPath.row].artist
        // if this is the last cell, we should already start loading the next page.
        if indexPath.row == tracks.count - 1 {
            trackMananger?.nextPage(handler: {[weak self] (tracks) in
                
                DispatchQueue.main.async {
                    
                    let range = (self?.tracks.count ?? 0)...((self?.tracks.count ?? 0) + tracks.count - 1)
                
                    let indexPaths = range.map {IndexPath(row: $0, section: 0) }
                    self?.tracks.append(contentsOf: tracks)
                    self?.tableView.insertRows(at: indexPaths, with: .automatic)
                }
            })
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let track = self.tracks[indexPath.row]
        self.performSegue(withIdentifier: "showDetail", sender: track)
    }
}

