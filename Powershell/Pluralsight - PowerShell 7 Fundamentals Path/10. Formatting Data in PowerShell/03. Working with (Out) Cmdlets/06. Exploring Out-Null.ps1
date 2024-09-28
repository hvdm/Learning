# Get the help for the Out-Null cmdlet
Get-Help Out-Null
# Output
# NAME
#     Out-Null

# SYNOPSIS
#     Hides the output instead of sending it down the pipeline or displaying it.


# SYNTAX
#     Out-Null [-InputObject <System.Management.Automation.PSObject>] [<CommonParameters>]


# DESCRIPTION
#     The `Out-Null` cmdlet sends its output to NULL, in effect, removing it from the pipeline and preventing the output from being displayed on screen.       


# Lets create a folder TEST, it defaults the output of the folder creation to the screen
New-Item -Name Test -ItemType Directory
# Output:
#     Directory: C:\

# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----           28-9-2024    16:14                Test

# Remove the folder again
Remove-Item Test


# Lets create a folder TEST, now pipe it to Out-Null
New-Item -Name Test -ItemType Directory | Out-Null
# Output:
# No Output


# Remove the folder again
Remove-Item Test

# This wont show anything
$dir = Get-ChildItem | Out-Null
$dir

# This does show the contents
($dir = Get-ChildItem) | Out-Null
$dir


# Create an arrayList
$MyArray = New-Object System.Collections.ArrayList
$MyArray.Add("Thing1")
# Output
# 0
$MyArray.Add("Thing2")
# Output
# 1
$MyArray.Add("Thing3")
# Output
# 2

# You dont need the output when something is added
$MyArray.Add("Thing4") | Out-Null
$MyArray
# Output
# Thing1
# Thing2
# Thing3
# Thing4

$MyArray.Add("Thing5") > $null
$MyArray
# Output
# Thing1
# Thing2
# Thing3
# Thing4
# Thing5


$null = $MyArray.Add("Thing6")
$MyArray
# Output
# Thing1
# Thing2
# Thing3
# Thing4
# Thing5
# Thing6


# Another way is to use void
[void]$MyArray.Add("Thing7")
$MyArray
# Output
# Thing1
# Thing2
# Thing3
# Thing4
# Thing5
# Thing6
# Thing7
