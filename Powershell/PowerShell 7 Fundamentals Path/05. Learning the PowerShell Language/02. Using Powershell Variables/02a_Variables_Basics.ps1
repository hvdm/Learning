# A variable is just a placeholder

# Create a variable 'a' and assign it a value of 1
# The $ sign is only for in powershell to reference it
$a = 1
$a

# Change the value of a from 1 to 2
$a = 2
$a

#
Get-Vegetable | Select-Object -First $a

$a = 5
$a
# Results will be saved into b
$b = Get-Vegetable | Select-Object -First $a
$b

# Results will be saved into b
$b = Get-Process | Select-Object -First $a
$b | Select-Object Name

$b | Sort-Object WorkingSet -Descending | Select-Object Name, WorkingSet

# Get a list of all variables in your session
Get-Variable

# The following is the same
$HOME
Get-Variable HOME

$a = Get-Variable IsWindows
$a