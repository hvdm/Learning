# Use Get-Process and format it to a list, selecting Name and Id
Get-Process | Format-List | Select-Object Name, Id
# Output:
# Name Id
# ---- --


# There is nothing in the output here except the headers
Get-Process | Get-Member
Output:

TypeName: System.Diagnostics.Process

# Doing the same but now with format list
Get-Process | Format-List | Get-Member
Output:
TypeName: Microsoft.PowerShell.Commands.Internal.Format.GroupStartData

# you dont have the same results
# MAKE SURE you have the formatting part always at the end of the commands

# This is in the wrong order: Get-Process | Format-List | Select-Object Name, Id
Get-Process | Select-Object Name, Id | Format-List
# Output:
# Name : AggregatorHost
# Id   : 12636

# Name : ai
# Id   : 27424

# Name : AppHelperCap
# Id   : 3184

# Name : ApplicationFrameHost
# Id   : 20664


# Output the same to a file
Get-Process | Select-Object Name, Id | Format-List | Out-File "$((Get-Location).Path)\process.txt"

