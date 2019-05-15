//
//  main.swift
//  FindMyNum
//
//  Created by BridgeLabz Solutions LLP  on 4/27/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift
func findMyNum(first:Int,last:Int)
{
    let middle = (first + last) / 2;
    if (first < last)
    {
        print("Is your number between \(first) and \(middle) [y/n]:")
        let choice:String=readLine()!
        if (choice == "y" || choice == "Y")
        {
            findMyNum(first:first, last:middle)
            
        }
        else
        {
            findMyNum(first:middle + 1,last:last)
        }
    }
    else if (first == last)
    {
        print("Number is \(last)");
    }
}
findMyNum(first: 1, last: 100)

