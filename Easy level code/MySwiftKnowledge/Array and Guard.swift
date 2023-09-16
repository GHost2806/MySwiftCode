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
