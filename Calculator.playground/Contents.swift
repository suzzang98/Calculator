class Calculator {

    init (){

    }
    
    func calculate(oper: String, firstNumber: Double, secondNumber: Double)-> Double{
        var result: Double = 0
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
            // 나눗셈일 경우 secondNumber가 0일 경우 추가
            if secondNumber == 0{
                print("\n\nsecondNumber은 0일 수 없습니다.")
            } else {
                result = firstNumber / secondNumber
            }
        }
        else{
            // +, -, *, / 이외의 연산자가 들어왔을 때의 출력
            print("\n\n정확한 연산자를 입력하세요")
        }
        return result

    }
}

let cal = Calculator()
let addResult = cal.calculate(oper: "+", firstNumber: 10, secondNumber: 5)
let subtractResult = cal.calculate(oper: "-", firstNumber: 10, secondNumber: 5)
let multiplyResult = cal.calculate(oper: "*", firstNumber: 10, secondNumber: 5)
let divideResult = cal.calculate(oper: "/", firstNumber: 10, secondNumber: 5)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

let wrongOperator = cal.calculate(oper: " ", firstNumber: 10, secondNumber: 5)
print("wrongOperator : \(wrongOperator)")

let wrongSecondNum = cal.calculate(oper : "/", firstNumber: 10, secondNumber: 0)
print("wrongSecondNum : \(wrongSecondNum)")
