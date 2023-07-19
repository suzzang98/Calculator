class Calculator {
    var firstNumber: Double
    var secondNumber: Double
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate(_ oper: String) -> Double {
        var operation: AbstractOperation
        switch oper {
        case "+":
            operation = AddOperation()
        case "-":
            operation = SubtractOperation()
        case "*":
            operation = MultiplyOperation()
        case "/":
            operation = DivideOperation()
        default:
            print("\n올바르지 않은 연산자입니다.")
            return 0
        }
        return operation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}
class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return 0
    }
}
class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        if secondNumber == 0 {
            print("\nzeroDivisionError")
            return 0
        }
        return firstNumber / secondNumber
    }
}



let calculator = Calculator(firstNumber: 10, secondNumber: 2)


let addResult = calculator.calculate("+")
let subtractResult = calculator.calculate("-")
let multiplyResult = calculator.calculate("*")
let divideResult = calculator.calculate("/")

print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")

let wrongOperator = calculator.calculate(" ")
print("wrongOperator: \(wrongOperator)")

