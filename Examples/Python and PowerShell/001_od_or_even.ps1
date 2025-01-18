<#
    Script : Return if a number is odd or even

    Author : H. van der Mark
    Email  : Herby@vandermark.org
    Link   : https://github.com/hvdm/Learning/tree/main/Examples/Python%20and%20PowerShell
#>

# Read the number from the input
$num = [int](Read-Host "Please enter a number: ")

# Result is the remainder
$result = $num % 2

if ($result -eq 0)
{
    # if the remainder is 0, the number is even
    Write-Host "Number $num is EVEN"
}    
elseif ($result -eq 1) 
{
    # if the remainder is 1, the number is even
    Write-Host "Number $num is ODD"
}

