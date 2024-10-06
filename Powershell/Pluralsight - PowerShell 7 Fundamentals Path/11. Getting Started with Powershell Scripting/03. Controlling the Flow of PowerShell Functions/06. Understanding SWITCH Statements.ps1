# # # # # Switch Statement Syntax # # # # #

# Base Syntax
# Switch (<expression>)
# {
#     <condition1> { <code> }
#     <condition2> { <code> }
#     <condition3> { <code> }
# }


$num = 3
switch ($num) 
{
    5 { Write-Host "Number equals to 5" }
    10 { Write-Host "Number equals to 10" }
    20 { Write-Host "Number equals to 20" }
    Default { Write-Host "Number NOT equals to 5, 10 or 20" }
}


# # # # # Multiple Expression Switch Statement Syntax # # # # #

# Base Syntax
# Switch (<expression1>, <expression2>)
# {
#     <condition1> { <code> }
#     <condition2> { <code> }
#     <condition3> { <code> }
# }

$num1 = 5
$num2 = 11
switch ($num1, $num2) 
{
    5 { Write-Host "Number equals to 5" }
    10 { Write-Host "Number equals to 10" }
    20 { Write-Host "Number equals to 20" }
    Default { Write-Host "Number NOT equals to 5, 10 or 20" }
}
