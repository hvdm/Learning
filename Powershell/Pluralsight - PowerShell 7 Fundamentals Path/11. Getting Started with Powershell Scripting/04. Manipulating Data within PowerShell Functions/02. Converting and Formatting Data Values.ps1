# Loosely types variable = Assinged to an undefined type
$variable1 = 10
$variable2 = "January 1, 2024"

# Strongly Typed Variable = Type is assigned to a variable
[int]$variable1 = 10
[datetime]$variable2 = "January 1, 2024"

# boolean
# datetime
# PowerShell Object
# ScriptBlock
# String
# Array

# # # # #Casting variables and values # # # # #
$variable1 = 1
$variable2 = "01/01/2024"

[int]$variable1                                 # Converting String Variable to Integer
[datetime]$variable2                            # Converting String Variable to Date
[int]$false                                     # Converting False Value to Integer


# # # # # Casting using the -AS Operator # # # # #
$variable1 = 1
$variable2 = "01/01/2024"

$variable1 -as [int]                            # Converting String Variable to Integer
$variable2 -as [datetime]                       # Converting String Variable to Date
$false -as [int]                                # Converting False Value to Integer


# # # # # Casting using the -F Operator # # # # #
# Format a value to a string

$variable1 = 123.4567890
$variable2 = 4503457892

# Display Only the three Decimal Places
# 0  : the actual value that comes in, 0 is string index 0
# n3 : show the three decimal places
"{0:n3}" -f $variable1
# Output:
# 123.457

# Add Dashes for Phone Number
"{0:###-###-####}" -f $variable2
# Output:
# 450-345-7892

# Display Year Only from Date
"{0:yyyy}" -f (Get-Date)
# Output:
# 2024
