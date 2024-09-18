# An array is a collection of things

# Any comma seperated list is an array
$arr = 3,5,9
$arr

$arr | Get-Member

# Add 1 till 10 into $a
$a = 1..10
$a

# Test is $a is an array
$a -is [array]

# Get number of items in the array
$a.Count

$a | Get-Member
# TypeName: System.Int32

#
$b = "foo", "bar", "abra", "ca", "dabra"
$b.Count
# Get the 1st entry in the array, starting at 0
$b[0]
# Get the 2nd entry in the array
$b[1]
# Get the last entry of the array starting from the end
$b[-1]
# Get the second-last entry of the array starting from the end
$b[-2]
# Get the first 3 elements
$b[0..2]

# Create an empty array
$c = @()
# Add an element to the array
$c += "localhost"
$c += $env:COMPUTERNAME
$c += "srv2"
$c

# Test-WSMan -ComputerName $c
# Error: Cannot convert 'System.Object[]' to the type 'System.String' required by parameter 'ComputerName'. Specified method is not supported.
# help Test-WSMan -Parameter ComputerName
# ComputerName <System.String> and $c is an array

# help Test-Connection -Parameter targetname
# TargetName <System.String[]> so $c can be used here
Test-Connection -TargetName $c -ipv4 -count 1 | FT
# Ping Source    Address   Latency(ms) BufferSize(B) Status
# ---- ------    -------   ----------- ------------- ------
#    1 NTB722049 127.0.0.1           0            32 Success

Test-Connection -TargetName $c -ipv4 -count 1 | 
    Where-Object {$_.Status -eq 'Success'} |
    ForEach-Object -Begin { $c = @() } -Process {
    $c += $_.destination
    } -End { Write-Host "testing complete" -ForegroundColor cyan}

$c
