//
//  main.swift
//  MonthlyPayment
//
//  Created by BridgeLabz Solutions LLP  on 4/26/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift
func monthlyPayment()
{
    let p=Double(readLine()!)!
    let y=Double(readLine()!)!
    let r=Double(readLine()!)!
    let n:Double=12*y;
    let r0:Double = r/12*100;
    let payment:Double = (p * r0) / (1 - pow((1 + r0), -n))
    print(payment)
    
}
monthlyPayment()


