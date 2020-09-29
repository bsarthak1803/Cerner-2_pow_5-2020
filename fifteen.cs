//cerner_2^5_2020
//extracting number from a string
using System;
using System.Text.RegularExpressions;
namespace DemoApplication{
    public class Program{
        static void Main(string[] args){
            string str1 = "123string456";
            string str2 = string.Empty;
            int val = 0;
            Console.WriteLine($"String with number: {str1}");
            var matches = Regex.Matches(str1, @"\d+");
            foreach(var match in matches){
                str2 += match;
            }
            val = int.Parse(str2);
            Console.WriteLine($"Extracted Number: {val}");
            Console.ReadLine();
        }
    }
}
