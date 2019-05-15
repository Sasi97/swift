import UIKit
func quadratic(a:Double,b:Double,c:Double)
{
    //i..e vale of delta
    let determinant = b * b - 4 * a * c
    // condition for real and different roots
    if(determinant > 0){
        let root1 = (-b + sqrt(determinant)) / (2 * a)
        let root2 = (-b - sqrt(determinant)) / (2 * a)
        print("printing roots \(root1) and \(root2)")
    }
        //condition for real roots
    else if determinant == 0 {
        let root = (-b / ( 2 * a))
        print(root)
    }
    else
    {
        let realPart = -b / (2 * a);
        let imaginaryPart = sqrt(-determinant) / (2 * a);
        print("\(realPart) & \(imaginaryPart)")
    }
}
var a = 1.0
var b = 3
var c = 3

quadratic(a:Double(a),b:Double(b),c:Double(c))

