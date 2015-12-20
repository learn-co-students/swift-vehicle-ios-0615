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
    var sponsers:[String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver:String, sponsers:[String]) {
        self.driver = driver
        self.sponsers = sponsers
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {speed += (0.2 * maxSpeed)}
    override func decelerate() {speed -= (0.2 * maxSpeed)}
    
    func driftRight() {heading += 90; speed *= 0.75}
    func driftLeft() {heading -= 90; speed *= 0.75}
}
