//
//  Movie.swift
//  FavoriteMovies
//
//  Created by JESUS MANUEL RIOS OLIVAS  on 6/7/19.
//  Copyright © 2019 JESUS MANUEL RIOS OLIVAS . All rights reserved.
//

import Foundation

class Movie {
    var id: String = ""
    var title: String = ""
    var year: String = ""
    var imageUrl: String = ""
    
    init(id: String, title: String, year: String, imageUrl: String) {
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
    }
}
