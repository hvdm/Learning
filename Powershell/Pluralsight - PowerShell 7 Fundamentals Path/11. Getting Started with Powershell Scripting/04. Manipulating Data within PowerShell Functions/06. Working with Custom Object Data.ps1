# # # # # Creating an Array # # # # #

# Create an Empty Array
$variable = @()
# Output: 

# Create an Array with Text Values
$variable = @("January", "February", "March", "April", "May", "June")
# Output:
# January
# February
# March
# April
# May
# June

# Create an Array with Text Values not using @()
$variable = "January", "February", "March", "April", "May", "June"
# Output:
# January
# February
# March
# April
# May
# June

# Create an Array with Text Values not using @()
$variable = Write-Output January February March April May June
# Output:
# January
# February
# March
# April
# May
# June

# # # # # Retrieving Array Items # # # # #

# Create an Array with Text Values
$variable = @("January", "February", "March", "April", "May", "June")

# Access Array Items using Offset
$variable[0]
# Output:
# January

# Access Array Items using Multiple Offsets
$variable[0, 1, 4]
# Output:
# January
# February
# May

# Access Array Items using Range Operator as Offsets
$variable[2..5]
# Output:
# March
# April
# May
# June


# # # # # Iterating Array Items # # # # #
# Create an Array with Text Values
$variable = @("January", "February", "March", "April", "May", "June")

# Access Array Items using Pipeline with ForEach-Object loop
$variable | ForEach-Object { "The month is: $PSItem" }
# Output:
# The month is: January
# The month is: February
# The month is: March   
# The month is: April   
# The month is: May     
# The month is: June    

# Access Array Items using a ForEach loop
foreach ($item in $variable) { "The month is: $item" }
# Output:
# The month is: January
# The month is: February
# The month is: March
# The month is: April
# The month is: May
# The month is: June

# Access Array Items using a ForEach Method
$variable.ForEach({ "The month is: $PSItem" })
# Output:
# The month is: January
# The month is: February
# The month is: March
# The month is: April
# The month is: May
# The month is: June

# Access Array Items using a For Loop
for ($item = 0; $item -lt $variable.Count; $item++)
{
    "The month is: {0}" -f $variable[$item];
    Write-Host "Current Position: $item"
}
# Output:
# The month is: January
# Current Position: 0   
# The month is: February
# Current Position: 1   
# The month is: March   
# Current Position: 2   
# The month is: April
# Current Position: 3
# The month is: May
# Current Position: 4
# The month is: June
# Current Position: 5



# # # # # Create HashTables # # # # #
# Create an Empty Hashtable
$variable = @{}         # @() = Array       @{} = HashTable

# Create a Hashtable with Keys and Values
$variable = @{ Month = 5; Name = "May"; Season = "Spring" }
# Output:
# Name                           Value
# ----                           ---- -
# Name                           May  
# Season                         Spring
# Month                          5

# Create an Ordered Hashtable with Keys and Values
$variable = [ordered]@{ Month = 5; Name = "May"; Season = "Spring" }
# Output:
# Name                           Value 
# ----                           ---- - 
# Month                          5     
# Name                           May   
# Season                         Spring


# # # # # Iterating a HashTable # # # # #
# Create a Country Population HashTable
$variable = @{
    China   = 1439323776
    India   = 1380004385
    America = 331002651
    Spain   = 46754778
}

# Interate all Keys and Values using ForEach-Object Loop
$variable.Keys | ForEach-Object
{
    $output = "{0} has a population of {1}" -f $_, $variable[$_];
    Write-Output $output
}


# Interate all Keys and Values using For Loop
foreach ($key in $variable.Keys)
{
    $output = "{0} has a population of {1}" -f $key, $variable[$key];
    Write-Output $output
}
# Output:
# China has a population of 1439323776
# America has a population of 331002651
# Spain has a population of 46754778
# India has a population of 1380004385


# # # # # PSCustomObject's # # # # #
# Create an Empty PSCustomObject
$variable = [PSCustomObject]@{
}

# Create an Empty PSCustomObject
$variable = New-Object -TypeName PSObject


# Create and Populate a PSCustomObject
$variable = [PSCustomObject]@{
    China   = 1439323776
    India   = 1380004385
    America = 331002651
    Spain   = 46754778
}

# Add items to a PSCustomObject
$variable | Add-Member -MemberType NoteProperty -Name "Russia" -Value 145934462
$variable | Add-Member -MemberType NoteProperty -Name "Norway" -Value 5421241

# Retrieve PSCustomObject Properties and Values
$variable
# Output:
# China   : 1439323776
# India   : 1380004385
# America : 331002651
# Spain   : 46754778
# Russia  : 145934462
# Norway  : 5421241

# Return Spain PSCustomObject
$variable.Spain
# Output:
# 46754778

# # # # # Testing PSCustomObject's # # # # #
$variable1 = 10
$variable2 = "10"

$variable1 -is [int]
# Output: True

$variable1 -is $variable2.GetType()
# Output: False

$variable1 -isnot [int]
# Output: False

$variable1 -isnot $variable2.GetType()
# Output: True
