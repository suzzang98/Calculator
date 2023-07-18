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
        else if oper == "%" {
            if secondNumber == 0{
                print("\n\nsecondNumber은 0일 수 없습니다.")
            } else {
                // Swift에서 % 연산자는 정수형에서 밖에 사용할 수 없기 때문에, truncatingRemainder라는 메소드를 사용해서 Double 타입에서도 사용 가능하도록 수정
                result = firstNumber.truncatingRemainder(dividingBy: secondNumber)
            }
        }
        else{
            // +, -, *, / 이외의 연산자가 들어왔을 때의 출력
            print("\n\n정확한 연산자를 입력하세요")
        }
        return result

    }
}

let calculator = Calculator()
let addResult = calculator.calculate(oper: "+", firstNumber: 10, secondNumber: 5)
let subtractResult = calculator.calculate(oper: "-", firstNumber: 10, secondNumber: 5)
let multiplyResult = calculator.calculate(oper: "*", firstNumber: 10, secondNumber: 5)
let divideResult = calculator.calculate(oper: "/", firstNumber: 10, secondNumber: 5)
let remainderResult = calculator.calculate(oper: "%", firstNumber: 10, secondNumber: 3)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")

let wrongOperator = calculator.calculate(oper: " ", firstNumber: 10, secondNumber: 5)
print("wrongOperator : \(wrongOperator)")

let wrongSecondNum = calculator.calculate(oper : "/", firstNumber: 10, secondNumber: 0)
print("wrongSecondNum : \(wrongSecondNum)")

