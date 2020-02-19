
import Foundation

class Student {
    var id : Int
    var name : String
    var dob : String
    var average : Double
    
    // constructor
    init(id : Int, name : String, dob : String, average : Double)
    {
        self.id = id
        self.name = name
        self.dob = dob
        self.average = average
    }
}
