//
//  ImageRequester.swift
//  MusicTrackSearch
//
//  Created by Cecil Costa on 26/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
import Alamofire

class ImageRequester {
    var url: URL
    private var cache = [URL:UIImage]()
    
    init(url: URL) {
        self.url = url
    }
    
    func request(handler: @escaping (Result<UIImage, MusicError>)->()) {
        if let image = cache[url] {
            handler(.success(image))
            return
        }
        
        
        AF.request(url).responseData { (response) in
            guard case .success(let data) = response.result,
            let image = UIImage(data: data) else {
                handler(.failure(.requestError))
                return
            }
            
            handler(.success(image))
            
        }
    }
}
