//1 let/var
let name = "Ivan"
print(name)

//2 \(age)
let age = 22
print("Участник \(name) c возрастом \(age) года")

//3 Edit var
var variable = 10
variable = 12
print(variable)

//4 Edit let
//let const = 3
//const = 5
//print(const)

//5 If ... Else
if let input = readLine(), let myNumber = Int(input) {
    if myNumber > 10 {
        print("Число больше  10")}
    else {
        print("Число меньше 10")
    }
} else {
    print("Введено не корректное число")
    
}

//6
print("Здравствуйте, введите своё имя:")
let userName = readLine()
print("Здравстуйте, \(userName), введите ваш возраст:")
if let ageString = readLine(), let userAge = Int(ageString) {
    if userAge >= 18 {
        print("Введите ваш стаж вождения:")
        if let expString = readLine(), let expDrive = Int(expString){
            if expDrive >= 5 && userAge >= 23  {
                print("Вам доступен расширенный автопарк.")
            }else{
                print("Вам доступен стандартный автопарк.")
            }
        }else {
            print("Введён некорректный формат.")
        }
        
    } else {
        print("Вам меньше 18 лет, к сожалению вы не можете использовать нашу программу.")
    }
    
} else {
    print("Введён неккорректный формат возраста.")
}

//7 Array Массивы
var myArray = [1,2,3,4,5]
print(myArray[2])
myArray.count
myArray.append(3)
myArray.insert(100, at: 3)
myArray.remove(at: 3)
myArray.removeFirst()
myArray.removeLast()
myArray.reverse()
print(myArray)

//8
var nameAges = ["Ivan": 30, "Alex": 35, "Dmitriy":30]
let nameAgesNew = nameAges.updateValue(40, forKey: "Ivan")

//9
var mySet: Set = [1,2,3,4] //1,2,3,4
mySet.insert(5) //1,2,3,4,5
mySet.insert(5) //1,2,3,4,5 (Нет изменений)

//9 Guard
func someFinc (one:Int, two:Int){
    let one = 1
    let two = 3
    guard one == two else {return}
    
}

//10 Switch

let totalScore = 10
switch totalScore {
case 1...10:
    print("So bad")
case 10...20:
    print("Better")
case 20...90:
    print("Next time")
case 90...100:
    print("Bingo")
default:
    break
    
}

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

//13

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

//14

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

//17 closure Замыкания
let closure = {
    print("Hello world")
}
func printText1 (closure1: () -> ()) {
    for _ in 0...3 {
        closure()
        }
    }

printText1 (closure1: closure)

//18 closure
func printText (closure1: () -> ()) {
    for _ in 0...3 {
        closure1()
        }
    }

printText {() -> () in
    print("Hello world")
}

//19 closure
let unsortedArray = [1, 44, 67, 4, 139, 9, 22]
let sortedArray = unsortedArray.sorted {
(Number1:Int, Number2:Int) -> Bool in
    return Number1 < Number2
}
print(sortedArray)

//20 tuples Кортеджи
let agesAndNames = ["Misha": 20, "Alex": 30, "Dmitro": 45]
var ageIn = 0
var nameIn = ""

for (nameInD, ageInD) in agesAndNames {
    if ageInD > ageIn {
        ageIn = ageInD
        nameIn = nameInD
    }
}

print("Maximum Age: \(ageIn)")
print("Corresponding Name: \(nameIn)")


