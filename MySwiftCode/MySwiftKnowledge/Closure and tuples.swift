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

