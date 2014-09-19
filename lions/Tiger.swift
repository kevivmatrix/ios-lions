//
//  Tiger.swift
//  lions
//
//  Created by vivek on 19/09/14.
//  Copyright (c) 2014 vivek. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age:Int = 0
    var name:String = ""
    var breed:String = ""
    var image:UIImage = UIImage(named: "")
    func chuff() {
        println("Chuff Chuff")
    }
    func chuffANumberOfTimes(times: Int) {
        for var index=0; index < times; index++ {
            chuff()
        }
    }
    func ageInTigerYearsFromAge() -> Int {
        let newAge = age * 3
        return newAge
    }
}

