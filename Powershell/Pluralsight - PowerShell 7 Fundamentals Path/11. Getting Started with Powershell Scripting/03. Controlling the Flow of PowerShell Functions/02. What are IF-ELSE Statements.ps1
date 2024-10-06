# The IF Syntax
$variable = "value"
if ($variable)
{
    Write-Output "The $variable check returned TRUE"
}


# The IF / ELSE Syntax
$variable = "value"
if ($variable)
{
    Write-Output "The $variable check returned TRUE"
}

else
{
    Write-Output "The $variable check returned FALSE"
}


# The IF / ELSEIF / ELSE Syntax
$variable1 = "value"
$variable2 = "value"
if ($variable1)
{
    Write-Output "The $variable1 check returned TRUE"
}

elseif ($variable2)
{
    Write-Output "The $variable2 check returned TRUE"
}


else
{
    Write-Output "The $variable1 AND $variable2 check returned FALSE"
}


##### Comparison Operator Syntax #####
$variable1 = "value"
$variable2 = "value"

# Equal Comparison Operator using -eq
if ($variable1 -eq $variable2) {}

# Greater than mparison Operator using -gt
if ($variable1 -gt $variable2) {}

# Greater than mparison Operator using -gt
if ($variable1 -gt $variable2) {}

# Greater than mparison Operator using -like
if ($variable1 -like $variable2) {}

# Greater than mparison Operator using -match
if ($variable1 -match $variable2) {}



##### Collection Operator Syntax #####
$array = 1..10
$comparevar = 6

# if current array value is greater then compare value
if ($array -gt $comparevar) {}

# if current array contains the compare value
if ($array -contains $comparevar) {}

# if compare value is within the array
if ($array -in $comparevar) {}



##### Logical Operator Syntax #####
$variable = "value"
$compare1 = "value"
$compare2 = "value"

# Multiple Equal Comparison Operator using -eq and -and
if ( ($variable -eq $compare1) -and ($variable -eq $compare2) ) {}

# Multiple Equal Comparison Operator using -eq and -or
if ( ($variable -eq $compare1) -or ($variable -eq $compare2) ) {}



##### Arithmetic Operator Syntax #####
$variable = "value"
$compare1 = "value"
$compare2 = "value"

# Add variables and check if result is greater than variable
if ( ($compare1 + $compare2) -gt $variable ) {}

# Divide variables and check if result is less than variable
if ( ($compare1 / $compare2) -lt $variable ) {}

# Multiply variables and check if result is equal to the variable
if ( ($compare1 * $compare2) -eq $variable ) {}




##### Ternary Operator Syntax #####
$variable1 = "1"
$variable2 = "3"
$textvariable = $true

# Compare both variable values using -eq then return true / false or message
( $variable1 -eq $variable2 ) ? $true : $false
( $variable1 -eq $variable2 ) ? ( "$variable1 > $variable2" ) : ( "$variable1 < $variable2" )
# Output:
# 1 < 3

# Compare variable values using -eq then return true or false
($textvariable) ? "Value is true" : "Value is false"
# Output:
# Value is true
