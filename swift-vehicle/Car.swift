//
//  Car.swift
//  swift-vehicle
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Car:Vehicle {
    let transmission:String
    let cylinders:Int
    let milesPerGallon:Double
    
    init(name: String, weight: Double, maxSpeed: Double, transmission:String, cylinders:Int, milesPerGallon:Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive() {super.accelerate()    ;headingCheck()}
    func brake() {super.decelerate()    ;headingCheck()}
}
