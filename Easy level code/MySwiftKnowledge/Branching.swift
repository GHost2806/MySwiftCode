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
if let userName = readLine() {
    print("Здравствуйте, \(userName), введите ваш возраст:")
    
    if let ageString = readLine(), let userAge = Int(ageString) {
        if userAge >= 18 {
            print("Введите ваш стаж вождения:")
            
            if let expString = readLine(), let expDrive = Int(expString) {
                if expDrive >= 5 && userAge >= 23 {
                    print("Вам доступен расширенный автопарк.")
                } else {
                    print("Вам доступен стандартный автопарк.")
                }
            } else {
                print("Введён некорректный формат.")
            }
        } else {
            print("Вам меньше 18 лет, к сожалению вы не можете использовать нашу программу.")
        }
    } else {
        print("Введён некорректный формат возраста.")
    }
} else {
    print("Не удалось получить ваше имя.")
}

