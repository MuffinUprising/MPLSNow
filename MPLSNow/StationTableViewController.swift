//
//  StationTableViewController.swift
//  MPLSNow
//
//  Created by Casey on 3/2/16.
//  Copyright © 2016 Casey. All rights reserved.
//

import UIKit

class StationTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let dataController = DataController()
    
    var refreshControl: UIRefreshControl!
    
    var stations: [Station] = []
    
    var theCurrent = Station(stationName: "", dj: "", song: "", artist: "", url: "", imageName: "")
    var radioK = Station(stationName: "", dj: "", song: "", artist: "", url: "", imageName: "")
    

    override func viewDidLoad() {
        stations.append(theCurrent)
        stations.append(radioK)
        
        dataController.fetchRadioKHTML()
        dataController.fetchCurrentHTML()

        dataController.setCurrentInfo(theCurrent)
        print("Current Artist: " + theCurrent.artist)
        dataController.setRadioKInfo(radioK)
        print("Radio K Artist: " + radioK.artist)
        super.viewDidLoad()
        
        self.refreshControl = UIRefreshControl()
        self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControl.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
    }
    
    override func viewWillAppear(animated: Bool) {
        dataController.fetchRadioKHTML()
        dataController.fetchCurrentHTML()
        print("Current Artist: " + theCurrent.artist)
        print("Radio K Artist: " + radioK.artist)
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
//        return 2
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("stationCell", forIndexPath: indexPath) as! StationCell
        
        let station = stations[indexPath.row]
        cell.stationName?.text = station.stationName
        cell.dj?.text = station.dj
        cell.song?.text = station.song
        cell.artist?.text = station.artist
        cell.imageView!.image = station.stationLogo

        return cell
    }

    
    // MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        
//        var indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow!
//        
//        var destViewController = segue.destinationViewController as! StationDetailViewController
//        
//        var stationList: StationList
//        var station = stationList[indexPath.row]
//        
//        destViewController.stationName = station.stationName
        
    }
}
