//: Playground - noun: a place where people can play

import UIKit

// Add function adds two doubles and returns addition value as double
func Add(A:Double,B:Double)->Double
{
    return A + B
}
// calling Add function 
Add(20.5, B: 23.5)


// Substract function substracts second integer from first integer and returns substraction value as integer
func Subtract(int1:Int,int2:Int)->Int{
    return int1 - int2
}
//calling Substraction function
Subtract(45, int2: 14)


// Multiply function multiplies two floats and returns multiplication value as float
func Multiply(float1:Float32,float2:Float32)->Float
{
    return float1 * float2
}
// Multiply function called
Multiply(2.2, float2: 4.1)

// Division function divides big number with small number (double) and returns a division value as double
func Division(doubleBig:Double, doubleSmall:Double) ->Double{
    return doubleBig / doubleSmall
}
// Division function called
Division(92.4, doubleSmall: 12.1)