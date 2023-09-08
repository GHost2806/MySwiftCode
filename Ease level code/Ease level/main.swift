//1
let name = "Ivan"
print(name)

//2
let age = 22
print("Участник \(name) c возрастом \(age) года")

//3
var variable = 10
variable = 12
print(variable)

//4
//let const = 3
//const = 5
//print(const)

//5
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

//7
var myArray = [1,2,3,4,5]
print(myArray[2])
myArray.count
myArray.append(3)
myArray.insert(100, at: 3)
myArray.remove(at: 3)
myArray.removeFirst()
myArray.removeLast()
print(myArray)



