//
//  Vehicle.swift
//  swift-vehicle
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double = 0
    var heading:Double = 0
    
    init(name:String, weight:Double, maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast()           {speed = maxSpeed}
    func halt()             {speed = 0}
    func accelerate()       {speed += (0.1 * maxSpeed); speedCheck()}
    func decelerate()       {speed -= (0.1 * maxSpeed); speedCheck()}
    func turnRight()        {if speed > 0 {heading += 90; speed *= 0.5}; headingCheck()}
    func turnLeft()         {if speed > 0 {heading -= 90; speed *= 0.5}; headingCheck()}
    
    func speedCheck() {
        if speed > maxSpeed {speed = maxSpeed}
        if speed < 0        {speed = 0}
    }
    
    func headingCheck() {
        if heading >= 0 {heading = heading % 359}
        else {
            repeat {heading += 360}
                while heading < 0
        }
        speedCheck()
    }
}