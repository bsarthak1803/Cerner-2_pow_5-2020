// cerner_2^5_2020
// Golang Program to check if a number is an Armstrong Number
// Input a number to check
 
package main
import "fmt"
 
func main() {
    var number,tempNumber,remainder int
    var result int =0
    fmt.Scan(&number)
 
    tempNumber = number
 
    for {
        remainder = tempNumber%10
        result += remainder*remainder*remainder     
        tempNumber /=10
         
        if(tempNumber==0){
            break
        }
    }
 
    if(result==number){
         fmt.Printf("%d is an Armstrong number.",number)
    }else{
        fmt.Printf("%d is not an Armstrong number.",number)
    }
}