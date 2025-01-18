# WORKS: The opening brace on a new line works fine for `foreach` loops.
foreach ($number in 1..10)
{
    $number
}
# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

# WORKS: It works fine for `if` and `switch` statements too.
if ($number -gt 5)
{
    $number
}
# Output:
# 10

# FAILS: This will halt execution to prompt for a script block.
1..10 | ForEach-Object
{
    $_
}
# Output:
# cmdlet ForEach-Object at command pipeline position 1
# Supply values for the following parameters:
# Process[0]:


# WORKS: The above needs to be written like this to work correctly:
1..10 | ForEach-Object {
    $_
}
# Output:
# Output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10


# FAILS: This will also halt and prompt the user for a script block.
1..10 | Where-Object
{
    $_ -gt 5
}
# Output:
# cmdlet Where-Object at command pipeline position 1
# Supply values for the following parameters:
# Property:

# WORKS: The above needs to be written like this to work correctly:
1..10 | Where-Object {
    $_ -gt 5
}
# Output:
# 6
# 7
# 8
# 9
# 10

# FAILS: This will throw an error that no value was provided for `-ScriptBlock` parameter.
Invoke-Command -ScriptBlock
{
    Get-Process
}
# Output:
# Invoke-Command : Missing an argument for parameter 'ScriptBlock'. Specify a parameter of type 'System.Management.Automation.ScriptBlock' and try again.
# At line:1 char:16
# + Invoke-Command -ScriptBlock
# +                ~~~~~~~~~~~~
#     + CategoryInfo          : InvalidArgument: (:) [Invoke-Command], ParameterBindingException
#     + FullyQualifiedErrorId : MissingArgument,Microsoft.PowerShell.Commands.InvokeCommandCommand
 

#     Get-Process


# WORKS: The above needs to be written like this to work correctly:
Invoke-Command -ScriptBlock {
    Get-Process
}
# Output:
# list of running processes
