//
//  Station.swift
//  MPLSNow
//
//  Created by Casey on 3/2/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import Foundation
import UIKit

class Station {
    
    var dc = DataController()
    var stationName: String
    var dj: String
    var song: String
    var artist: String
    var url: String
    var stationLogo: UIImage
    
    init(stationName: String, dj: String, song: String, artist: String, url: String, imageName: String) {
        self.stationName = stationName
        self.dj = dj
        self.song = song
        self.artist = artist
        self.url = url
        if let img = UIImage(named: imageName) {
            stationLogo = img
        } else {
            stationLogo = UIImage(named: "default")!
        }
    }
    
}
