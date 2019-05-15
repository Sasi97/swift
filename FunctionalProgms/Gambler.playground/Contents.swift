import UIKit
import Swift
func game(stake:Int,goal:Int,numOfTimes:Int)
{
    var cash=stake
    var bets=0
    var wins=0
    for _ in 1...numOfTimes
    {
        bets+=1
        while cash>0 && cash<goal
        {
            let n = Float.random(in: 0...1)
            if n < 0.5
            {
                cash-=1
            }
            else
            {
                cash+=1
            }
            if cash==goal
            {
                wins+=1
            }
        }
        
    }
    let winPer:Float = (Float(wins/numOfTimes))*100
    let loosePer=100-winPer
    print("Num of Wins: \(wins)")
    print("Win Percentage :\(winPer)")
    print("Loose Percentage :\(loosePer)")
    
    
}
var s=10
let g=100
var n=10
game(stake: s, goal: g, numOfTimes: n)

