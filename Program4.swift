 /*

   suppose we have part timer empolyees who are working 7 days a week

   we need to enter their name , and how many hours one of them is working everyday

   and then hourly rate for each

   then we want to calculate their bi-weekly pay.

   but we need to consider that

   1.the hourly rate is doubled if the day is weekend

   2. on monday,wed:then the hourly rate is 1.5 of normal rate for any hour more than 8

   3. on tuesday, thursday,friday:then the rate is 1.5 of normal rate for any hour more then 6

   let we have 5 empolyee

   */

  

import Foundation



  func reading(name: inout[String], hrs: inout[Double], pay: inout[Double]) {

    for _ in 0..<4{

        print("enter the name of the employee:")

        name.append(readLine()!)

        print("enter the pay:")

        pay.append(Double(readLine()!)!)

        for i in 0..<7 {

            print("enter the no. of hours:\(i+1) day of week")

            hrs.append(Double(readLine()!)!)

            

        }

    }

  }

  func weekend(hrs:[Double], pay:[Double]) -> Double {

    for i in 0...hrs.count-1 {

        if (i == 5)&&(i == 6) {

            let a = (hrs[5]*pay[5])*2.0

            let b = (hrs[6]*pay[6])*2.0

           print("Pay For Saturday \(a)")

           print("Pay for Sunday \(b)")

        }

        

    }

    return 0.0

  }

  

  func weekday(name: [String],hrs: [Double],pay: [Double]) ->Double{

    for j in 0..<name.count{

      if(hrs[0] > 8) && (hrs[2] > 8){

          let newPay = (hrs[0]*pay[j])*1.5

          let newPay1 = (hrs[2]*pay[j])*1.5

           print("Pay For Monday \(newPay)")

                        print("Pay For Wednesday \(newPay1)")

      }

      else{

          let newPay = (hrs[0]*pay[j])

          let newPay1 = (hrs[2]*pay[j])

          print("Pay For Monday \(newPay)")

                print("Pay For Wednesday \(newPay1)")

      }

      }

      return 0.0

  }

  func weekday1(name: [String],hrs: [Double],pay: [Double]) ->Double{

      for j in 0..<name.count{

      if(hrs[1] > 6) && (hrs[3] > 6) && (hrs[4] > 6){

          let newPay = (hrs[1]*pay[j])*1.5

          let newPay1 = (hrs[3]*pay[j])*1.5

          let newPay2 = (hrs[4]*pay[j])*1.5

          print("Pay for Tuesday: \(newPay)")

                 print("Pay for Thursday \(newPay1)")

          print("Pay for Friday \(newPay2)")

          }

      else{



          let newPay = (hrs[1]*pay[j])

          let newPay1 = (hrs[3]*pay[j])

          let newPay2 = (hrs[4]*pay[j])

          print("Pay for Tuesday: \(newPay)")

                 print("Pay for Thursday \(newPay1)")

          print("Pay for Friday \(newPay2)")

          }

      }

          return 0.0

      }

  enum weeks: Int {



    case monday=1, tuesday, wednesday, thursday, friday, saturday, sunday

  }

  var name = [String]()

  var hrs = [Double]()

  var pay = [Double]()

  let r = reading(name: &name, hrs: &hrs, pay: &pay)

  print(r)

  let v = weekend(hrs: hrs, pay: pay)

  let e = weekday(name: name, hrs: hrs, pay: pay)

  let a = weekday1(name: name, hrs: hrs, pay: pay)
