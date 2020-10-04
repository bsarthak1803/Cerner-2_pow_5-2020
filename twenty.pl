# cerner_2^5_2020
# Number Guessing Game implementation using Perl Programming  
print "Number guessing game\n"; 
$x = int rand 10; 
$correct = 0; 
$chances = 4; 
$n = 0;  
print "Guess a number (between 0 and 10): \n"; 
while($n < $chances) 
{  
    chomp($userinput = <STDIN>); 
    if($userinput != "blank") 
    {  
        if($x == $userinput) 
        { 
            $correct = 1;  
            last; 
        } 
        elsif($x > $userinput) 
            print "Your guess was too low, guess a higher number than ${userinput}\n";
        else
            print "Your guess was too high, guess a lower number than ${userinput}\n";
        $n++;   
    } 
    else
        $chances--; 
}  
    if($correct == 1) 
            print "You Guessed Correct!The number was $x";  
    else
            print "It was actually ${x}."; 
