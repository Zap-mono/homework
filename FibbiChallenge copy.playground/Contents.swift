import UIKit

func fibonacci(n: Int) {
    var num1 = 0
    var num2 = 1
    var nextNum = Int()
    let i = 1
    var array = [Int]()
    array.append(num1)
    array.append(num2)

    for _ in i...n {
       nextNum = num1 + num2
       num1 = num2
       num2 = nextNum
       array.append(num2)
       print(array)
    }

   print("result = \(num2)")
 }
print(fibonacci(n: 5))

