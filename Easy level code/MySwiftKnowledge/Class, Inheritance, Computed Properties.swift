//21 Class
class SomeCompany {
    var name: String
    var jobTitle: String
    
    init(name: String, jobTitle: String) {
        self.name = name
        self.jobTitle = jobTitle
    }
    
    static func listofFiredWorkers(workers: [Workers]) {
        print("Список уволенных сотрудников из компании \(myCompanyName.name):")
        for worker in workers {
            print("Имя: \(worker.name), Возраст: \(worker.age)")
        }
    }
    static func listOfHiredWorkers(workers:[Workers]){
        print("Список нанятых сотрудников в компанию \(myCompanyName.name):")
        for worker in workers {
            print("Имя: \(worker.name), Возраст: \(worker.age)")
        }
    }
    
    func firedWorker(workerName: String) {
        print("Сотрудник \(workerName) уволен из компании \(myCompanyName.name).")
    }
    
    func hiredWorker(workerName: String) {
        print("Сотрудник \(workerName) взят на работу в компаниию \(myCompanyName.name).")
    }
    
}

struct Workers {
    var name: String
    var age: Int
}

let myCompanyName = SomeCompany(name: "Astra", jobTitle: "Programmer")

var firedWorkers = [
    Workers(name: "Alex", age: 18),
    Workers(name: "Dmitriy", age: 23),
    Workers(name: "Diana", age: 22)
]

var hiredWorkers = [
    Workers(name: "Alehandro", age: 33),
    Workers(name: "Viktor", age: 27),
    Workers(name: "Maria", age: 32)
]

SomeCompany.listofFiredWorkers(workers: firedWorkers)
SomeCompany.listOfHiredWorkers(workers: hiredWorkers)

//22 Наследование

class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
    func tellAboutMe() -> String {
        return "Привет, меня зовут \(name)."
    }
}
class Child: Human {
    var toy = "Horse"
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        return originalText + "И у меня есть игрушка \(self.toy)"
    }
    init(toy: String, name: String) {
        self.toy = toy
        super.init(name: name)
    }
}

//23 Вычисляемые свойства

class Rectangular {
    let height: Int
    let width: Int
    let depth: Int
    
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
    
}

let rect = Rectangular(height: 10, width: 12, depth: 13)
print(rect.volume)

//24

//class Person {
//    var name:String
//    var lastName: String
//
//    init(name: String, lastName: String) {
//        self.name = name
//        self.lastName = lastName
//    }
//
//    var fullName: String {
//        get {
//            return name + " " + lastName
//        }
//        set(anotherNewValue) {
//            let array = anotherNewValue.components(separatedBy: " ")
//            name = array[0]
//            lastName = array[1]
//        }
//    }
//}
//
//let personOne = Person(name: "Alex", lastName: "Evdakimov")
//print(personOne.fullName)

//25
class Car {
    let products: Int
    let people:  Int
    let pets: Int
    class var selfWeight: Int {return 1500}
    class var maxWeight: Int {return 2000}
    
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 300, pets: 50)
let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight
let totalWeight = car.totalWeight
if maxWeight < totalWeight {
    print("Машина перегруженна на: \(totalWeight-maxWeight)кг.")
} else {
    print("Машина готова к поездке.")
}

