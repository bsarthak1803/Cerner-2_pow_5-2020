//cerner_2^5_2020
/*Scala program of array declaration, 
print and calculate sum of all elements.*/

object ExampleArray1 {
    
   def main(args: Array[String]) {
       
      var numbers = Array(10,20,30,40,50);
      var N:Int=0;
      
      //print all array elements
      println("Array elements: ");
      for ( N <- numbers ) {
         println(N);
      }
      //calculating SUM of all elements
      var sum: Int=0;
      for ( N <- numbers ) {
         sum+=N;
      }      
      println("Sum of array elements: "+sum);

   }
}