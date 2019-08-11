//
//  CustomTableViewCell.swift
//  FavoriteMovies
//
//  Created by JESUS MANUEL RIOS OLIVAS  on 6/7/19.
//  Copyright © 2019 JESUS MANUEL RIOS OLIVAS . All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieYear: UILabel!
    @IBOutlet var favButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
