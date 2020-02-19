
import Foundation

//create a class of name student with attributes:
// id, name, date of birth and average
// and a sub class graduate_student with same attributes plus teh project grade
// in the main, create array of students to have some of students and graduate students

//create an array of students and graduate students
//let the user give the array size, fill the array by the user

print("How many students you have?")
let n = Int(readLine()!)!
var students = [Student]()

for _ in 0..<n {
    
    print("Enter 1 for student and 2 for graduate student")
    let choice = Int(readLine()!)!
    print("Enter the id")
    let id = Int(readLine()!)!
    print("Enter the name")
    let name = readLine()!
    print("Enter the date of birth")
    let dob = readLine()!
    print("Enter the average")
    let average = Double(readLine()!)!
    
    if choice == 1 {
        students
            .append(Student(id: id, name: name, dob: dob, average: average)
        )
    }else{
        print("Enter student project grade:")
        let pg = Double(readLine()!)!
        students
            .append(GraduateStudent(id:id, name:name, dob:dob, average: average, projectGrade: pg))
    }
}
    print(students[1].name)

