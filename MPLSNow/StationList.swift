//
//  StationList.swift
//  MPLSNow
//
//  Created by Casey on 3/2/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import Foundation

class StationList {
    
//    let dataController = DataController()
    
    var stations: [Station]
    
    init(includeStations: [Station]) {
        
        stations = includeStations
    }
    
    class func Stations() -> StationList {
        var stations = [Station]()

        
        stations.append(Station(stationName: "The Current", dj: "", song: "", artist: "", url: "http://www.thecurrent.org/listen", imageName: "current_logo.png"))
        stations.append(Station(stationName: "Radio K", dj: "", song: "", artist: "", url: "http://www.radiok.org", imageName: "radiok_logo.png"))
        
        return StationList(includeStations: stations)
    }
}
