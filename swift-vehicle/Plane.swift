//
//  Plane.swift
//  swift-vehicle
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Plane:Vehicle {
    let maxAltitude:Double
    var altitude:Double = 0 {
        didSet {
            if altitude > maxAltitude   {altitude = maxAltitude}
            if altitude < 0             {altitude = 0}
        }
    }
    var inFlight:Bool {
        if altitude > 0 && speed > 0 {
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff()  {if !inFlight {speed = (0.1 * maxSpeed); altitude = (0.1 * maxAltitude)}}
    func land()     {if inFlight {speed = 0; altitude = 0}}
    func climb()    {if inFlight {altitude += (0.1 * maxAltitude); decelerate()}}
    func dive()     {if inFlight {altitude -= (0.1 * maxAltitude); accelerate()}}
    func bankRight(){if inFlight {heading += 45; speed *= 0.9}}
    func bankLeft() {if inFlight {heading -= 45; speed *= 0.9}}
}
