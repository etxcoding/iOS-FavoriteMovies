//
//  HTTPHandler.swift
//  FavoriteMovies
//
//  Created by JESUS MANUEL RIOS OLIVAS  on 6/7/19.
//  Copyright © 2019 JESUS MANUEL RIOS OLIVAS . All rights reserved.
//

import Foundation

class HTTPHandler {
    static func getJson(urlString: String, completionHandler: @escaping (Data?) -> (Void)) {
        let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: urlString!)
        
        print("URL being used is \(url!)")
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { data, response, error in
            if let data = data {
                let httpResponse = response as! HTTPURLResponse
                let statusCode = httpResponse.statusCode
                print("request completed with code: \(statusCode)")
                if (statusCode == 200) {
                    print("return to completion handler with the data")
                    completionHandler(data as Data)
                }
            } else if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            }
        }
        task.resume()
    }
}
