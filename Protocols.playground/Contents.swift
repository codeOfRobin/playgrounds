import Foundation

protocol payable {
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int)
}

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
}

class HourlyEmployee: Employee, payable
{
    var hourlyWage: Double = 15.00
    var hoursWorked: Double = 0
    let availableVacation = 0
    
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int) {
        return (hourlyWage*hoursWorked, 0, 0, availableVacation)
    }
}

func  payEmployee(employee:payable) -> Void
{
    employee.pay()
}
let emp = Employee(fullName: "Robin", employeeAddress: "none", employeeStartDate: NSDate(), employeeType: .NotManager)


protocol Blendable {
    func blend()
}
class Fruit : Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func blend() {
        print("I'm mush")
    }
}

class Dairy : Blendable{
    var name: String
    func blend() {
        print("Still milk")
    }
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy {}

func makeSmoothie(ingredients : [Blendable])
{
    ingredients.forEach { (ingredient) in
        ingredient.blend()
    }
}
let apple = Fruit(name: "Apple")
let milk = Milk(name: "Milk")
makeSmoothie([milk, apple])

