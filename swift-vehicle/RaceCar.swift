//
//  RaceCar.swift
//  swift-vehicle
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar:Car {
    let driver:String
    var sponsors:[String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver:String, sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {speed += (0.2 * maxSpeed); speedCheck()}
    override func decelerate() {speed -= (0.2 * maxSpeed); speedCheck()}
    
    func driftRight() {if speed > 0 {heading += 90; speed *= 0.75} ;headingCheck()}
    func driftLeft() {if speed > 0 {heading -= 90; speed *= 0.75} ;headingCheck()}
}
