
//using the dictonary

//let the user insert number of product names and price for each after every insertion ask the user if wants to insert more out not.

//when not following

//1. let user enter the product names and print its prices but if not exist show a msg

// 2.let the user enter the amount of money and print all product names which their prices less there entered the amount

//3. find the price and name of product of the max price



import Foundation



func searchbyname(prod:[String:Double], prosname:String)-> Double

{

    for (name,price) in prod{

        if name == prosname{

            return  price

        }

    }

    return -1.0

}



func findprod(product:[String:Double], amount:Double) -> Double {

    for (name,price) in product{

    if price < amount{

        print(name)

    }

}

    return amount

}



func maxp(product:[String:Double]) -> String {

    var max = 0.0

    var maxname = " "

    for (name,price) in product {

        if price > max{

            max = price

        }

    }

    return maxname

}

var product = [String: Double]()

while true{

    print("enter product names:")

    let name = readLine()!

    print("enter the product price:")

    let price = Double(readLine()!)!

    product[name] = price

    print("press 0 to stop or any no. to enter more products:")

    let choice = Int(readLine()!)!

    if choice == 0 {

       break

    

       }

}



print("required product:")

let prodname = readLine()!

let p = searchbyname(prod: product, prosname: prodname)

if p == -1.0{

    print("sorry")

    

}else{

    print(" the product is:\(p)")

}

    

    print("amount of money")

    let amount = Double(readLine()!)!

    findprod(product: product, amount: amount)





//expensive product

let exp = maxp(product: product)

print("max price\(exp)")

print(" price is \(product[exp])")
