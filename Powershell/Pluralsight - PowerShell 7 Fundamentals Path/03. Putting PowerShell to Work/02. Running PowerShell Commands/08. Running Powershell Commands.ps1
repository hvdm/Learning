Write-Host "------------------------------------------------------------"
# Get the vegetables
Get-Vegetable

Write-Host "------------------------------------------------------------"
# Help Get-Vegetable
# output
# SYNTAX
#     Get-Vegetable [[-Name] <String>] [-RootOnly] [<CommonParameters>]

Write-Host "------------------------------------------------------------"
# Print only the corn vegetable
Get-Vegetable -Name corn

Write-Host "------------------------------------------------------------"
# Using a switch
Get-Vegetable -RootOnly

Write-Host "------------------------------------------------------------"
# Using a another switch
Get-Vegetable -Verbose

Write-Host "------------------------------------------------------------"
# Get all services that start with WIN
# Not all Cmdlets/Functions have verbose implemented.
# Verbose on Get-Service doesnt do anything
get-service -Name win* -Verbose | Format-Table

Write-Host "------------------------------------------------------------"
# Get help for Get-Process
Get-Help Get-Process

Write-Host "------------------------------------------------------------"
# Get process by ID
Get-Process $PID
# This errors: Cannot find a process with the name "1144". Try running with -Id to search by Id of processes.

Get-Help Get-Process -Parameter ID
# Output:
# name           : Id
# required       : true <-- This is required, so -ID must by specified
# position       : named

# Get process by ID
Get-Process -ID $PID | Format-Table
Write-Host "------------------------------------------------------------"

