import UIKit

func isValid(_ s: String) -> Bool {
     if s.count == 0{
         return true
     }
     
     var arr: [Character] = []
    //Traverse the string
     for i in s {
        //Determine whether the character is a right parenthesis, if so, determine whether the top element of the stack is the same type of left parenthesis
         if i == ")" {
             if arr.popLast() != "("{
                 return false
             }
         }else if i == "]" {
             if arr.popLast() != "[" {
                 return false
             }
         }else if i == "}" {
             if arr.popLast() != "{" {
                 return false
             }
         }else{
            //If it is not a right parenthesis, it will be put on the stack
             arr.append(i)
         }
     }
    //If the element in the stack is 0, it is valid, otherwise invalid
     return arr.count == 0
 }
