
import Foundation
class GraduateStudent : Student {
    var projectGrade : Double
    
 init(id:Int, name: String, dob : String, average : Double, projectGrade : Double)
    {
          self.projectGrade = projectGrade
        super.init(id : id, name : name, dob : dob, average : average)
      
    }
}
