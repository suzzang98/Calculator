class Calculator {
    var result: Double? = nil
    var oper: String? = nil
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    
    init (){

    }

    func calculate(oper: String, firstNumber: Double, secondNumber: Double)-> Double?{
        if oper == "+" {
            result = firstNumber + secondNumber
        }
        else if oper == "-" {
            result = firstNumber - secondNumber
        }
        else if oper == "*" {
            result = firstNumber * secondNumber
        }
        else if oper == "/" {
            result = firstNumber / secondNumber
        }
        else{
            print("정확한 연산자를 입력하세요")
            result = nil
        }
        return result

    }
}

let cal = Calculator()
let addResult = cal.calculate(oper: "+", firstNumber: 10, secondNumber: 5)
let subtractResult = cal.calculate(oper: "-", firstNumber: 10, secondNumber: 5)
let multiplyResult = cal.calculate(oper: "*", firstNumber: 10, secondNumber: 5)
let divideResult = cal.calculate(oper: "/", firstNumber: 10, secondNumber: 5)
let errorResult = cal.calculate(oper: " ", firstNumber: 10, secondNumber: 5)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("errorResult : \(errorResult)")
