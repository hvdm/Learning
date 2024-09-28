# Get the help for the Out-String cmdlet
Get-Help Out-String
# Output:
# NAME
#     Out-String

# SYNOPSIS
#     Outputs input objects as a string.


# SYNTAX
#     Out-String [-InputObject <System.Management.Automation.PSObject>] [-NoNewline] [-Width <System.Int32>] [<CommonParameters>]

#     Out-String [-InputObject <System.Management.Automation.PSObject>] [-Stream] [-Width <System.Int32>] [<CommonParameters>]


# DESCRIPTION
#     The `Out-String` cmdlet converts input objects into strings. By default, `Out-String` accumulates the strings and returns them as a single string, but y 
#     ou can use the Stream parameter to direct `Out-String` to return one line at a time or create an array of strings. This cmdlet lets you search and manip 
#     ulate string output as you would in traditional shells when object manipulation is less convenient.

#     PowerShell also adds the `OSS` function that calls `Out-String -Stream` as a shorthand way to use `Out-String` in a pipeline.


# This outputs to a string and is no longer an object
Get-Process | Out-String | Get-Member
# Output:
#     TypeName   : System.String


$process = Get-Process
$process.Count
# Output:
# 357

# Return the first object
$process[0]
# Return the next object
$process[1]

# Ask for the first object
$process | Select-Object -First 1

# Ask for the first 5 objects
$process | Select-Object -First 5

# Get the members
$process | Get-Member
# Output:
# TypeName: System.Diagnostics.Process

# Now let's do the same but pipe it to Out-String
$process = Get-Process | Out-String
$process.Count
# Output:
# 1

# Get the first object
$process[0]
$process[1]
$process[2]
$process[3]
# This returns nothing because it isnt an object anymore
# However when using the -stream parameter you can access each line as a seperate string

$process = Get-Process | Out-String -Stream
$process.Count
# Output:
# 380

# Get the first objects
$process[0]
# returns an empty line

$process[1]
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName

$process[2]
# ------    -----      -----     ------      --  -- -----------

$process[3]
#     5     1,19       4,61       0,00   12636   0 AggregatorHost



