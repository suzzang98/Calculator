class Calculator {
    var firstNumber : Double
    var secondNumber : Double
    
    init (firstNumber : Double, secondNumber:Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate(oper: String, firstNumber: Double, secondNumber: Double)-> Double{
        let addOperation = AddOperation()
        let subtractOperation = SubtractOperation()
        let multiplyOperation = MultiplyOperation()
        let divideOperation = DivideOperation()
        
        if oper == "+"{
            return addOperation.operate(firstNumber: firstNumber, secondNumber : secondNumber)
        } else if oper == "-"{
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber : secondNumber)
        } else if oper == "*"{
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber : secondNumber)
        } else if oper == "/"{
            return divideOperation.operate(firstNumber: firstNumber, secondNumber : secondNumber)
        } else {
            print("\n올바르지 않은 연산자입니다.")
        }
        return 0
    }
}

class AddOperation{
    func operate(firstNumber: Double, secondNumber:Double) -> Double{
        return firstNumber + secondNumber
    }
}

class SubtractOperation{
    func operate(firstNumber: Double, secondNumber:Double) -> Double{
        return firstNumber - secondNumber
    }
}

class MultiplyOperation{
    func operate(firstNumber: Double, secondNumber:Double) -> Double{
        return firstNumber * secondNumber
    }
}

class DivideOperation{
    func operate(firstNumber: Double, secondNumber:Double) -> Double{
        if secondNumber == 0{
            print("\nzeroDivisionError")
            return 0
        }
        return firstNumber / secondNumber
    }
}



let calculator = Calculator(firstNumber: 10, secondNumber: 2)


let addResult = calculator.calculate(oper: "+", firstNumber: 10, secondNumber: 2)
let subtractResult = calculator.calculate(oper: "-", firstNumber: 10, secondNumber: 2)
let multiplyResult = calculator.calculate(oper: "*", firstNumber: 10, secondNumber: 2)
let divideResult = calculator.calculate(oper: "/", firstNumber: 10, secondNumber: 2)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

let wrongOperator = calculator.calculate(oper: " ", firstNumber: 10, secondNumber: 5)
print("wrongOperator : \(wrongOperator)")

let wrongSecondNum = calculator.calculate(oper : "/", firstNumber: 10, secondNumber: 0)
print("wrongSecondNum : \(wrongSecondNum)")

