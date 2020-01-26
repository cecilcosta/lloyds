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
    
    private var requesting = false
    private let presenter = ViewControllerPresenter()
    let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // init the overlay
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.medium
        loadingIndicator.startAnimating();
        alert.view.addSubview(loadingIndicator)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TrackDetailViewController,
            let track = sender as? Track {
            destination.track = track
        }
    }
    
    private func showOverlay() {
        requesting = true
        present(alert, animated: true, completion: nil)
    }
    
    private func dismissOverlay() {
        alert.dismiss(animated: true, completion: { self.requesting = false })
    }
    
    private func showError() {
        let alertController = UIAlertController(title: "Error", message: "Something went wrong with your request 😢", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok, thanks for letting me know", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
        
    }
    
    private func requestNextPage() {
        guard !requesting else { return }
        let trackCount = presenter.trackCount
        showOverlay()
        
        presenter.nextPage {[weak self] (result) in
            DispatchQueue.main.async {
                self?.dismissOverlay()
                
                switch result {
                case .success(let newTracks):
                    guard newTracks.count > 0 else {
                            return
                        }
                        
                        let range = trackCount...(trackCount + newTracks.count - 1)
                    
                        let indexPaths = range.map {IndexPath(row: $0, section: 0) }
                        self?.tableView.insertRows(at: indexPaths, with: .automatic)
                case .failure(.requestError):
                    self?.showError()
                case .failure(.wrongPage):
                    () //do nothing, it might just be a page after the last one
                }
            }
        }
    }

}

extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let query = searchBar.text {
            showOverlay()
            presenter.search(query) {[weak self] (newtracks) in
                DispatchQueue.main.async {
                    self?.dismissOverlay()
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
        return presenter.trackCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        cell.accessoryType = .disclosureIndicator
        
        let currentPosition = indexPath.row
        guard let track = presenter.track(at: currentPosition) else {
            return cell
        }
        
        
        
        let trackCount = presenter.trackCount
        cell.textLabel?.text = track.name
        cell.detailTextLabel?.text = track.artist
        if let imageURL = track.smallPictureUrl() {
            ImageRequester(url: imageURL).request {[weak self] result in
                DispatchQueue.main.async {
                    guard case .success(let image) = result,
                        let row = self?.tableView.indexPath(for: cell)?.row,
                        row == currentPosition else {
                        return
                    }
                    
                    // Here my mind has blown up. I was not able to find any picture different than a white star. (https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png"). If you know any example please let me know and check if there are issues here or not. 🙃
                    cell.imageView?.image = image
                    cell.setNeedsLayout()
                }
                
                
            }
        }
        
        
        // if this is the last cell, we should already start loading the next page.
        // There are other ways of doing infinite scrolling, but I chose this one due to its simplicity
        if currentPosition == trackCount - 1 {
            requestNextPage()
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let track = presenter.track(at: indexPath.row) else {
            return
        }
        self.performSegue(withIdentifier: "showDetail", sender: track)
    }
}

