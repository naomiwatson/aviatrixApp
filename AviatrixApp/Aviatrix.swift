//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation


class Aviatrix {
    
    var author = ""
    var data = AviatrixData()
    var currentLocation = "St. Louis"
    
    init(userName : String) {
        author = userName
    }
   
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        currentLocation = destination
    }
    
    func distanceTo(currentLocation : String, target : String) -> Int {
        return data.knownDistances[currentLocation]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
