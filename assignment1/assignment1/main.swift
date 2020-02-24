
/*Create a class product with attributes:
no, name, cost, quantity

and functions:
price to calculate and return the price of the product as following
price = cost * 1.7 if the cost less than 20$ and price = cost * 1.5 otherwise

reduceQuantity( soldQty)
to reduce the available quantity by the soldQty

in the main:
create an array of products. let the user enter some products.
then let the user enter a name of product to buy
search if the product exists then show its price
and ask the user about the required quantity
and check if the required quantity available
calculate the total price and add 13% for tax show the total price
and reduce the quantity by the sold quantity.
and ask the user if want to buy another product if not exit.*/

import Foundation
//searching the product by name
func productSearch(products:[Product],name:String) -> Int{
    for i in 0...products.count-1
    {
        if(products[i].name == name)
        {
            return i
        }
    }
    return -1
}
//calculate the price and returning the price of the product
func costCalculation(products:[Product],cost: Double,quantity: Int) -> Double{
    for _ in 0...products.count-1{
       if(cost < 20){
            let price = cost*Double(quantity)
            let a: Double
            a = price*1.7
            return a
        }
        else{
            let price = cost*Double(quantity)
            let a: Double
             a = price*1.5
            return a
        }
    }
    return -1.0
}
//to reduce the available quantity of the product available
func reduceQty(quantity: Int,r:Int) -> Int{
    if(quantity > r){
        let a: Int
        a = quantity - r
        return a
    }
    else{
        print("Sorry! Quantity not available")
    }
return -1
}

print("How many Products you have")
var n = Int(readLine()!)!
var product = [Product]()
for _ in 0..<n{
    print("Enter the Product No ")
    let no = Int(readLine()!)!
    print("Enter The Product Name")
    let name = readLine()!
    print("Enter the cost of the Product")
    let cost = Double(readLine()!)!
    print("Enter the quantity available for the product")
    let quantity = Int(readLine()!)!
    product.append(Product(no:no, name:name,cost:cost,quantity:quantity))
}
print("Enter the name of the product you want to buy")
let pName = readLine()!
var pos = productSearch(products: product,name: pName)
if(pos == -1)
{
    print("Not found")
}
else
{
    print("Found at \(pos)")
    print(product[pos].name)
}
var pPrice = product[pos].cost
print(pPrice)
var qty = product[pos].quantity
print(qty)
let x = costCalculation(products: product, cost: pPrice, quantity:qty)
print("Total cost for all the products is \(x)")
print("How Much Quantity You want to buy")
var r = Int(readLine()!)!
let c = reduceQty(quantity: qty, r: r)
print("Remaining Quantity \(c)")
var fPrice = pPrice*Double(qty)
print(" Final Price is \(fPrice)")
print("Thank You")
