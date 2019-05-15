//
//  main.swift
//  TemperatureConversion
//
//  Created by BridgeLabz Solutions LLP  on 4/26/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift
func tempConversion(temp:Float,char:String)-> Float
{
    var conversion:Float=0.0
    if (char == "f" || char == "F")//converting to celsius
    {
        conversion = Float(temp - 32 * (5/9))
    }
    else if (char == "c" || char == "C")//converting to Farenhit
    {
        conversion = Float(temp * (9/5) + 32)
    }
    return Float(conversion)
}
print("Enter Temperature:")
var temp=Float(readLine()!)!
print("F-Farenhit & C-Celsius")
var char=readLine()!
var result=tempConversion(temp:temp,char:char)
print(result)


//conversion = (temperature - 32) * ((float) 5 / 9);
//conversion = (temperature * ((float) 9 / 5)) + 32;
