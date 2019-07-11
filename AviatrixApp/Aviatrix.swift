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
    var distanceTraveled = 0
    var maxFuel = 5000 //gallons
    var fuelLevel = 3080.0
    var milesPerGallon = 0.4 //mpg
    var fuelCost = 0.0 //
    
    init(userName : String) {
        author = userName
    }
   
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let gallonsNeeded = Double(maxFuel) - fuelLevel
        let data = AviatrixData()
        fuelCost += gallonsNeeded * data.fuelPrices[currentLocation]!
        fuelLevel = 5000.0
        return gallonsNeeded
    }
    
    func flyTo(destination : String) {
         //car, bart station, bart, walked, shuttle1, shuttle2, walked
        distanceTraveled += distanceTo(currentLocation: currentLocation, target: destination)
        currentLocation = destination
       //create a fuelSpent var that calculates how much fuel you have used
        let fuelSpent = Double(distanceTraveled) / milesPerGallon
        fuelLevel -= fuelSpent
        currentLocation = destination
        //update fuelLevel based on fuelSpent
    }
    
    func distanceTo(currentLocation : String, target : String) -> Int {
        return data.knownDistances[currentLocation]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
