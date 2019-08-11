//
//  JSONParser.swift
//  FavoriteMovies
//
//  Created by JESUS MANUEL RIOS OLIVAS  on 6/7/19.
//  Copyright © 2019 JESUS MANUEL RIOS OLIVAS . All rights reserved.
//

import Foundation

class JSONParser {
    static func parse (data: Data) -> [String: AnyObject]? {
        let options = JSONSerialization.ReadingOptions()
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: options)
            as? [String: AnyObject]
            
            return json!
        } catch (let parseError) {
            print("There was an error parsing the JSON: \"\(parseError.localizedDescription)\"")
        }
        return nil
    }
}
