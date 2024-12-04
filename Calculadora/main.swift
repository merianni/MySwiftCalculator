//
//  main.swift
//  Calculadora
//
//  Created by Merianni Nunez Tejeda on 12/3/24.
//

import Foundation

// Calculator menu
func menu() {
    let title = "Calculator"
    print("___________")
    print("\(title)")
    print("___________")
    print("Enter a symbol to perform an operation: (+, -, *, /)")
    print("""
      + | Add
      - | Substract
      * | Multiply
      / | Divide
    """)
}

// user number input
func getInput() -> Double {
    print("Enter a number:")
    return Double(readLine()!)!
}

func calculate(operation: String, number1: Double, number2: Double) -> String {
    var result: Double
    switch operation {
    case "+":
        result = number1 + number2
    case "-":
        result = number1 - number2
    case "*":
        result = number1 * number2
    case "/":
        //
        if number2 == 0 {
            return "ERROR: Cannot divide by zero"
        }
        result = number1 / number2
    default:
        return "ERROR: Invalid Operation"
    }
    return "\(number1) \(operation) \(number2) = \(result)"
}

// loop for menu / performing more operations
while true {
    menu()
    let operation = readLine()!
    let number1 = getInput()
    let number2 = getInput()
    let result = calculate(operation: operation, number1: number1, number2: number2)
    print(result)
    
    print("""
        
    Do you want to perform another operation? (y/n)
    """)
    if readLine()! != "y" {
        break
    }
}
