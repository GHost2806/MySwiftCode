//11 For ... In
let littleArray = ["Ivan": 20, "Max": 31, "Dmitri": 33, "Marina":18]
for  (nameArray, ageArray) in littleArray {
    print("Сотруднику \(nameArray): \(ageArray) лет")
}

//12 while/ repite...while
var timer = 10
while timer > 0  {
    print(timer)
    timer -= 1
}

//13 Struct

struct User {
    let name: String
    let  age: Int
}

let user1 = User(name: "Alex", age: 13)
let user2 = User(name: "Max", age: 22)

func correction(firstUser: User, secondUser: User) {
    if user1.age > user2.age {
        print("\(user1.name) страше \(user2.name)")
    } else {
        print("\(user2.name) страше \(user1.name)")
    }
}

correction(firstUser: user1, secondUser: user2)

//14 Func

let s = 10
let g = 12

func numCor (numOne:Int, numTwo:Int) {
    if numOne>numTwo {
        print("\(numOne) больше")
    } else {
        print("\(numTwo) больше")
    }
}

numCor(numOne: s, numTwo: g)

//15 sruct, switch, func
struct CompanyEmployee {
    let name: String
    let age: Int
    let expAge: Int
}

let employees = [
    CompanyEmployee(name: "Alex", age: 32, expAge: 8),
    CompanyEmployee(name: "Diana", age: 22, expAge: 2),
    CompanyEmployee(name: "Radmir", age: 28, expAge: 10)
]

func calcEmployeesAverSell(employee1: CompanyEmployee, employee2: CompanyEmployee, employee3: CompanyEmployee) {
    switch (employee1.expAge, employee2.expAge, employee3.expAge) {
    case let (exp1, exp2, exp3) where exp1 > exp2 && exp1 > exp3:
        print("\(employee1.name) работает дольше всех")
    case let (exp1, exp2, exp3) where exp2 > exp1 && exp2 > exp3:
        print("\(employee2.name) работает дольше всех")
    case let (exp1, exp2, exp3) where exp3 > exp1 && exp3 > exp2:
        print("\(employee3.name) работает дольше всех")
    default:
        print("Все сотрудники работают одинаково долго")
    }
}

calcEmployeesAverSell(employee1: employees[0], employee2: employees[1], employee3: employees[2])

//16 for in
struct MyCompanyEmployee {
    let name: String
    let finger: Int
}

let carpenters = [
    MyCompanyEmployee(name: "Dmitriy", finger: 20),
    MyCompanyEmployee(name: "Diana", finger: 15),
    MyCompanyEmployee(name: "Alex", finger: 19)
]

for employee in carpenters {
    print("\(employee.name) с \(employee.finger) пальцами")
}
