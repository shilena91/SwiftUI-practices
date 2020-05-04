//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Hoang on 3.5.2020.
//  Copyright © 2020 Hoang. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let results = try decoder.decode(Results.self, from: data)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    }
                    catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}
