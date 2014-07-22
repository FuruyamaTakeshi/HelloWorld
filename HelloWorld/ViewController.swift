//
//  ViewController.swift
//  HelloWorld
//
//  Created by 古山 健司 on 2014/07/19.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
                            
    @IBOutlet var myLabel: UILabel
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let languageName = "Swift";
        var varsion = 1.0
        let introduced = 2014
        let isAwesome = true
        let ほげ = "hoge"
        let 🐶🐮 = "dogcow"
        let someString = "I appear to be a string";
        let components = "~/Docments/Swift".pathComponents
        for string : String in components {
            println(string)
        }
        
        for character in "mouse" {
            println(character)
        }
        
        let dog: Character = "🐶"
        let cow: Character = "🐮"
        let dogCow = dog + cow
        println(dogCow)
        let instruction = "Beware of the " + dog
        println(instruction)
    
        let a = 3, b = 5
        let mathResult = "\(a) times \(b) is \(a * b)"
        println(mathResult)
        
        let c = 7, d = 4
        let mathResult1 = "\(c) times \(d) is \(c * d)"
        println(mathResult1)
        
        var names = ["Anna", "Alex", "Brian", "Jack"]
        for name : String in names {
            println(name)
        }
        
        var numberOfLegs = ["ant": 6, "snake":0, "cheetah": 4, "aardvark" : 4]
        var keys = numberOfLegs.keys
        for key : String in keys {
            let result = "\(key) : \(numberOfLegs[key])"
            println(result)
        }
        
        numberOfLegs["spider"] = 218
        numberOfLegs["spider"] = 8
        
        keys = numberOfLegs.keys
        for key : String in keys {
            let result = "\(key) : \(numberOfLegs[key])"
            println(result)
        }
        
        let possibleLegCount: Int? = numberOfLegs["aardvark"];
        
        if possibleLegCount == nil {
            println("Aardvark was not found")
        } else {
            let legCount = possibleLegCount!
            println("An aardvark has \(legCount) legs")
        }
        
        switch possibleLegCount! {
            case 0:
                println("It has no legs")
            
            case 1...8:
                println("It has a few legs")
            default:
                println("It has lots of legs")
        }

        println("Hello, WWDC")
        println(languageName)
        println(ほげ)
        self.myLabel.text = 🐶🐮
        sayHello()
        
        let greeting = buidGreeting()
        println(greeting)
        
        let (statusCode, message) = refreshWebPage()
        println("Received \(statusCode): \(message)")
        
        for (animalName, legCount) in numberOfLegs {
            println("\(animalName)s have \(legCount) legs")
        }
        
        let someVehicle : Vehicle = Vehicle()
        println(someVehicle.description)
        
        let myBicycle : Vehicle = Bicycle()
        println(myBicycle.description)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sayHello() {
        println("Hello!")
    }
    
    func buidGreeting(name: String = "World") -> String {
        return "Hello " + name
    }

    func refreshWebPage() -> (Int, String) {
        return (200, "Success")
    }
}

