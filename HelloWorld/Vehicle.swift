//
//  Vehicle.swift
//  HelloWorld
//
//  Created by 古山 健司 on 2014/07/21.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

import Foundation

class Vehicle {
    // properties
    var numberOfWheels = 0 // Stored
    var description: String {
        get {
            return "\(numberOfWheels) wheels"
        }
    }
    // methods
    // initailize
}

class Bicycle : Vehicle {
    init()  {
        super.init()
        numberOfWheels = 2;
    }
}

class Car: Vehicle {
    var speed = 0.0
    init()  {
        super.init()
        numberOfWheels = 4
    }
    override var description: String {
        return super.description + ", \(speed) mph"
    }
}