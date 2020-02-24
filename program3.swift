
import Foundation
func reading(month: inout[String],bill: inout[Double]){
    for i in 0..<12{
        print("Enter the Month")
              month.append(readLine()!)
              print("Enter the bill")
              bill.append(Double(readLine()!)!)
    }
}
func monthSearch(month: [String],bill: [Double],mName: String) -> Int{
    for i in 0..<month.count{
           if mName == month[i]{
               print("Bill for the Selected Month is: \(bill[i])")        
           return i
           }           
       }
    return -1
}
func billAvg(bill: [Double]) -> Int{
    let sum = bill.reduce(0,+)
      let avg: Double = sum/Double(bill.count)
      print(avg)    
    return 0
}
func quarterAvg(bill: [Double]) -> Double{
    let sum1 = bill[0] + bill[1] + bill[2]
    let avg1 = sum1/3
print("The avg bill of first quarter is: \(avg1)")
    let sum2 = bill[3] + bill[4] + bill[5]
    let avg2 = sum2/3
    print("The avg bill of Second quarter is: \(avg2)")
    let sum3 = bill[6] + bill[7] + bill[8]
    let avg3 = sum3/3
    print("The avg bill of Second quarter is: \(avg3)")
    let sum4 = bill[9] + bill[10] + bill[11]
    let avg4 = sum4/3
    print("The avg bill of Second quarter is: \(avg4)")       
    return 0
}
func lessThan(bill: [Double] ,month: [String]) -> Int{
    for i in 0...bill.count-1{
        if(bill[i] < 75){          
            print(month[i])           
        }       
    }
    return -1
}
func billMin(bill: [Double],month: [String]) -> Int{
    var min:Double  = 0.0
    for i in 0...bill.count-1{
        if(bill[i] <= 75){
            min = bill[i]
            print(month[i])
                     print(bill[i])
        }
        else{
            print("")
        } 
    }
    return 0
}
var month = [String]()
var bill = [Double]()
print("Electricity Bill")
let r = reading(month: &month, bill: &bill)
print(month)
print(bill)
print("Enter the month whose bill you want to access")
var mName = readLine()!
var pos = monthSearch(month: month, bill: bill, mName: mName)
var avg = billAvg(bill: bill)
var qAvg = quarterAvg(bill: bill)
var less = lessThan(bill: bill, month: month)
var mBill = billMin(bill: bill, month: month)
