//
//  main.swift
//  TicToc
//
//  Created by BridgeLabz Solutions LLP  on 4/24/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift
let count = 3
var Matrix:[[String]] = Array(repeating: Array(repeating: " " , count: count), count: count)
func display()
{
    print("\(Matrix[0])\n\(Matrix[1])\n\(Matrix[2])\n  ")
}
func matrixFull()
{
    for _ in Matrix
    {
        if Matrix.contains(["0"]) || Matrix.contains(["1"])
        {
        
            print("Match tie")
            exit(0)
        }
    }
}
func system()
{
    let n1=Int.random(in:0...2)
    let n2=Int.random(in:0...2)
    if n1<3 && n2<3
    {
        if Matrix[n1][n2]==" "
        {
            Matrix[n1][n2]="1"
        }
        else
        {
            system();
        }
        
    }
    display()
    row_check(row: n1)
    column_check(col: n2)
    diagonal_check()
    diagonal1_check()
    matrixFull()
    player()
}



func player()
{
    print("Enter Indices to Play row and col value")
    let row:Int=Int(readLine()!)!
    let col:Int=Int(readLine()!)!
    if row<3 && col<3
    {
        if Matrix[row][col]==" "
        {
            Matrix[row][col]="0"
        }
        else
        {
            print("Enter correct indices to play:");
            player();
        }
    }
    else
    {
        print("Enter indices b/w 0 to 2:");
        player();
    }
    display()
    row_check(row:row)
    column_check(col:col)
    diagonal_check()
    diagonal1_check()
    matrixFull()
    system()
}
func row_check(row:Int)
{
    if Matrix[row][0]==Matrix[row][1] && Matrix[row][0]==Matrix[row][2] && Matrix[row][0] != " " && Matrix[row][1] != " " && Matrix[row][2] != " "
    {
        print("Game Won by \(Matrix[row][0])")
        exit(0)
    }
}
func column_check(col:Int)
{
    if Matrix[0][col]==Matrix[1][col] && Matrix[0][col]==Matrix[2][col] && Matrix[0][col] != " " && Matrix[1][col] != " " && Matrix[2][col] != " "
    {
        print("Game Won by \(Matrix[0][col])")
        exit(0)
    }
    
}
func diagonal_check()
{
    if Matrix[0][0]==Matrix[1][1] && Matrix[0][0]==Matrix[2][2] && Matrix[0][0] != " " && Matrix[1][1] != " "  && Matrix[2][2] != " "
    {
        print("Game Won by \(Matrix[0][0])");
        exit(0);
    }
}
func diagonal1_check()
{
    if Matrix[0][2]==Matrix[1][1] && Matrix[0][2]==Matrix[2][0] && Matrix[0][2] != " " && Matrix[1][1] != " "  && Matrix[2][0] != " "
    {
        print("Game Won by \(Matrix[0][2])");
        exit(0);
    
}






}
player()
