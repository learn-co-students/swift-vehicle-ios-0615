//
//  Jet.swift
//  swift-vehicle
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Jet:Plane {
    var isAfterburning:Bool = false
    override var speed:Double {
        didSet {
            if speed < 0        {speed = 0}
            if speed > maxSpeed && !isAfterburning {speed = maxSpeed}
        }
    }
    
    override func climb()   {if inFlight {altitude += (0.2 * maxAltitude); decelerate()}}
    override func dive()    {if inFlight {altitude -= (0.2 * maxAltitude); accelerate()}}
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            isAfterburning = true
            speed = 2 * maxSpeed
        }
    }
}
