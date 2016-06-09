//: Playground - noun: a place where people can 

protocol FullyNameable
{
    var fullName:String {get}
}

struct User : FullyNameable
{
    var fullName: String
}

let user = User(fullName: "sdf")

struct Friend
{
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName:String
    {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")

print(friend.fullName)

protocol UserType {
    var name: String { get }
    var age: Int { get set }
}

struct Person : UserType
{
    var name: String
    var age: Int
}


let somePerson = Person(name: "Robin", age: 21)

import Foundation

enum EmployeeType {
    case Manager
    case NotManager
}

class Employee
{
    
    let name: String
    let address: String
    let startDate: NSDate
    let type: EmployeeType
    
    var department: String?
    var reportsTo: String?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: EmployeeType) {
        self.name = fullName
        self.address = employeeAddress
        self.startDate = employeeStartDate
        self.type = employeeType
        
    }
    
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int) {
        return (0, 0, 0, 0)
    }
    
}

