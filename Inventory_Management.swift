//reading product details
func readProducts(pNo : inout [Int], pName : inout [String], pQuantity : inout [Int], pPrice : inout [Double], pCategory : inout [String], pSale : inout [String], n : Int){
    
    for i in 0..<n {
        print("Enter the product no. for product \(i)")
        pNo.append(Int(readLine()!)!)
        print("----------------")
        print("Enter the product name")
        pName.append(readLine()!)
        print("----------------")
        print("Enter the quantity available of the product ")
        pQuantity.append(Int(readLine()!)!)
        print("----------------")
        print("Enter the price per unit for the product")
        pPrice.append(Double(readLine()!)!)
        print("----------------")
        print("Enter the category of the product")
        pCategory.append(readLine()!)
        print("----------------")
        print("Is this product on Sale? (Yes/No)")
        pSale.append(readLine()!)
        print("----------------")
    }
    
}

//showing the menu to ask user for the next action
func showMainMenu() -> Int{
  print("---------------------------------------")
  print("Please select an option")
  print("---------------------------------------")
  print("1. Search for a product")
  print("2. View all the products of a particular category")
  print("3. Restock a product")
  print("4. Purchase a product")
  print("5. View the discounted price of a product")
  print("6. View the products on sale")
  print("----------------")
  let choice = Int(readLine()!)!
  return choice
}

//searching a product by name
func searchByName(pName : inout [String], n : Int, pNo : inout [Int], pQuantity : inout [Int], pPrice : inout [Double], pCategory : inout [String], pSale : inout [String]) {
  print("----------------")
  print("Enter the name of the product you would like to search")
  let name = readLine()!
  for i in 0..<n {
    if name == pName[i] {
      print("The product exists")
      print("----------------")
      print("Product no. : \(pNo[i])")
      print("Product Name : \(pName[i])")
      print("Available Quantity : \(pQuantity[i])")
      print("Price per unit : \(pPrice[i])")
      print("Category : \(pCategory[i])")
      print("On Sale : \(pSale[i])")
    }
  }
}

//function to restock a product if a quantity is less than 2
func restock(pQuantity : [Int], pName : [String], n : Int) {
  print("----------------")
   print("Enter the name of the product you would like restock")
      var prestock = readLine()!
      print("----------------")
  for i in 0..<pName.count {
     
      if prestock == pName[i] {
        print("How many you want to add?")
        let add = Int(readLine()!)!
        print("----------------")
        print("Previous quantity of \(prestock) is \(pQuantity[i])")
        print("----------------")
        print("Updated quantity of \(prestock) is \(pQuantity[i] + add)")
      }
  }
}

//function to purchase a product
func purchase(pName : [String], pQuantity : [Int], pPrice : [Double], discount : Double, pSale : [String]) {
    print("Enter the name of the product you would like to purchase")
    var name = readLine()!
    print("----------------")
    for i in 0..<pName.count {
      if name == pName[i] {
        print("How many units do you want to purchase for \(name)")
        var units = Int(readLine()!)!
        print("----------------")
        print("The price for this item is \(pPrice[i])")
         print("----------------")
        print("Discount is 25%")
         print("----------------")

         if pSale[i] == "yes"{
            var saleDiscount = 0.30
            let total = pPrice[i] * Double(units)
            var finalPrice = total - (total * 0.25)
            var truePrice = finalPrice - (finalPrice * 0.30)
            print("Discounted price for this product is \(truePrice)")
            print("----------------")
            print("Quantity left : \(pQuantity[i] - units)")
         }
         else {
           var saleDiscount = 0.30
            let total = pPrice[i] * Double(units)
            var finalPrice = total - (total * 0.25)
            print("Discounted price for this product is \(finalPrice)")
            print("----------------")
            print("Quantity left : \(pQuantity[i] - units)")
         }
        
      }
    }
}

//function to view the discounted price of a product
func viewDiscount(pName : [String], discount : Double, pPrice : [Double], pQuantity : [Int]) {
  print("Enter the name of the product ")
    var name = readLine()!
    print("----------------")
    for i in 0..<pName.count {
      if name == pName[i] {
        
        print("The price for this item is \(pPrice[i])")
         print("----------------")
        print("Discount is 25%")
         print("----------------")
        let total = pPrice[i] * Double(pQuantity[i])
        var finalPrice = total - (total * 0.25)
        print("Discounted price for this product is \(finalPrice)")
         
      }
    }
}

//function to view the products on sale
func viewSale(pName : [String], pSale : [String], n:Int) {
  for i in 0..<n {
    if pSale[i] == "yes" {
            print("Items on sale are : \n \(pName[i])")
    }
    
  }
}

//view all the products of a particular category
//printing all the categories
func viewAll(pCategory : [String], n : Int, pName : [String]) {
  print("----------------")
  print("The available categories are :")
  for i in 0..<n {
  print("\n \(pCategory[i])")
  } 
    print("---------------------------------------")
    print("Please select a category")
    let choice = readLine()!
    for i in 0..<n {
    if choice == pCategory[i]{
    print("Products in this category are \n \(i+1) \(pName[i])")
  }
  }
}

//declaring variables
var pNo = [Int]()
var pName = [String]()
var pQuantity = [Int]()
var pPrice = [Double]()
var pCategory = [String]()
var pSale = [String]()
//var choice : Int
let discount = 0.25
var finalName : String

print("How many products you would like to add?")
    let n = Int(readLine()!)!
    print("----------------")
//starting the program
print("Welcome to Inventory Management System")
print("``````````````````````````````````````")
print("Let us add some products")
print("----------------")

//calling the function to read product details
readProducts(pNo : &pNo, pName : &pName, pQuantity : &pQuantity, pPrice : &pPrice, pCategory : &pCategory, pSale : &pSale, n : n)

let menu = showMainMenu()
if menu == 1 {
  //search a product
  searchByName( pName : &pName, n: n, pNo : &pNo, pQuantity : &pQuantity, pPrice : &pPrice, pCategory :   &pCategory, pSale : &pSale)
}else if menu == 2 {
  //calling the function to view all products of a selected category
  viewAll( pCategory : pCategory, n : n, pName : pName)
}else if menu == 3 {
  restock(pQuantity : pQuantity, pName : pName, n : n)
}else if menu == 4 {
  purchase(pName : pName, pQuantity : pQuantity, pPrice : pPrice, discount : discount, pSale : pSale)
}else if menu == 5 {
  viewDiscount(pName : pName, discount : discount, pPrice : pPrice, pQuantity : pQuantity)
}else if menu == 6 {
  viewSale(pName : pName, pSale: pSale, n : n)
}

