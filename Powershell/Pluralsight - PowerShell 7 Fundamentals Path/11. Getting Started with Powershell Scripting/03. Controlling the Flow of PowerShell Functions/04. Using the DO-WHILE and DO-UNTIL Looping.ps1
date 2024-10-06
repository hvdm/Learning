# # # # # Entry versus Exit loop # # # # #
$number = 1

# Entry loop: While Loop
# While ( <condition> ) Do { Command sequence } 

While ($number -le 10)
{
    $number; $number++
}

# Exit loop: Do-While Loop
# Do { Command sequence } While ( <condition> ) 
$number = 1
Do { $number; $number++ } 
while ($number -le 10)


# Exit loop: Do-While Loop
# Do { Command sequence } Until ( <condition is true> ) 
$number = 1
Do { $number; $number++ } 
until ($number -le 10)


