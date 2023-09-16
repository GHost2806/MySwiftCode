//26 Lazy Ленивые процессы
func bigDataProcessingFunc() -> String {
    return "very long process"
}

class Processing {
    let smallDataProcessing = "small data processing"
    let averageDataProcessing = "average data processing"
    lazy var bigDataProcessing = bigDataProcessingFunc()
}

let process = Processing()
print (process.bigDataProcessing)

