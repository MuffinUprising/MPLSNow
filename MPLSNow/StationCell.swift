//
//  StationCell.swift
//  MPLSNow
//
//  Created by Casey on 3/2/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import UIKit


class StationCell: UITableViewCell {
    
    @IBOutlet weak var stationLogo: UIImageView!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var dj: UILabel!
    @IBOutlet weak var song: UILabel!
    @IBOutlet weak var artist: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
