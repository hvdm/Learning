<#
    Script : Return if a number is a palindrome or not
             A palindrome is a word, number, phrase, or other sequence of symbols that 
             reads the same backwards as forwards

    Author : H. van der Mark
    Email  : Herby@vandermark.org
    Link   : https://github.com/hvdm/Learning/tree/main/Examples/Python%20and%20PowerShell
#>

# Read the string from the input
$str = Read-Host "Please enter a string: "

# [-1 .. -length of $str] means "slice the entire string or sequence in reverse order."
if ($str -eq $( -join $str[-1.. - $str.length]))
{
    Write-Host("$str is a palindrome")
}    
else
# if num is "num in reversed order" then it is not a palindrome
{
    Write-Host("$str is not a palindrome")
}    

