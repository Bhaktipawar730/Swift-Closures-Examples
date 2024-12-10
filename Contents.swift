
import Foundation

// 1. Simple closure
let greetClosure = {
    print("Hello, World!")
}
greetClosure()


// 2. Closure with parameters and return type
let addNumbers: (Int, Int) -> Int = { (num1, num2) in
    return num1 + num2
}
let sum = addNumbers(5, 3)
print("Sum: \(sum)")


// 3. Trailing closure syntax
func performOperation(operation: (Int, Int) -> Int) {
    let result = operation(10, 20)
    print("Result: \(result)")
}
performOperation { $0 * $1 } // Multiplication using trailing closure


// 4. Closure as a completion handler
func fetchData(completion: (String) -> Void) {
    let data = "Data fetched successfully"
    completion(data)
}
fetchData { result in
    print(result)
}
