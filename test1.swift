
/*
 Suppose we have electricity bills for a year - 12 months from January to
December. Every bill has an amount of money.
Create a program to let the user enter these amounts.
Then let the program do the following:
1. Ask the user to select the month and print the amount of bill for that month.
2. Find and print the average of all bills
3. Find and print the average of each quarter of the year. So print the quarter
number and its average.
4. Print names of months which their bills more than 75$
5. Print the name of month that has the minimum bill amount
 */

import Foundation
//function for reading bills for each month
func billsReading(bill : inout [Double], month : inout [String]) {
    //inout converts constants into variables
    for i in 0..<n {
        print("Enter the \(i) month")
        month.append(readLine()!)
        print("Enter the bill for the month")
        bill.append(Double(readLine()!)!)
        
    }
}

//searching for the bill amount of a particular month
func search(bill : [Double], month : [String]){
    print("Enter the month you want to see the bill amount for")
           let smonth = readLine()!
    for i in 0..<n {
       
        if smonth == month[i] {
            print("The bill amount for the month of \(smonth) is = \(bill[i])")
        }
    }
}

//finding average of all bills
func avg(bill : [Double]) {
    var sum = 0
    for _ in 0..<n{
        sum = Int(Double(bill.reduce(0, +)))
    }
    let avg : Double = Double(sum) / Double(n)
    print("The average of all bills is : \(avg)")
}

//finding the average of each quarter
func quart(bill : [Double]) {
    
   //quarter 1
   var average=0.0
   for i in 0..<3{
       average = average + bill[i]
   }
       print("Average of quarter 1 : \(average/3)")
    
   //quarter 2
       average=0.0
   for i in 3..<6{
       average = average + bill[i]
   }
       print("Average of quarter 2 : \(average/3)")
    
   // quarter 3
       average=0.0
   for i in 6..<9{
       average = average + bill[i]
   }
       print("Average of quarter 3 : \(average/3)")
    
   //quarter 4
       average=0.0
   for i in 9..<12{
       average = average + bill[i]
   }
       print("Average of quarter 4 : \(average/3)")
}


//finding bills more than 75$
func moreThan(month : [String], bill : [Double]) {
    for i in 0..<n {
        if bill[i] > 75 {
            print("Months where bill is more than 75 are : \(month[i])")
        }
    }
}

//finding the month with minimum bill amount
func minBill(bill : [Double], month : [String]) {
    var min = bill[0]
    for i in 0..<n {
        if bill[i] < min {
            min = bill[i]
        }
    }
     print("the minimum bill is \(min) ")
}

let n = 12
var month = [String]()
var bill = [Double]()
billsReading(bill: &bill, month: &month)
search(bill: bill, month: month)
avg(bill: bill)
moreThan(month: month, bill: bill)
minBill(bill: bill, month: month)
quart(bill: bill)
