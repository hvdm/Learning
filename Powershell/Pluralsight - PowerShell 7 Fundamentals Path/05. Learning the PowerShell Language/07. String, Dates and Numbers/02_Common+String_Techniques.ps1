# Set $s
$s = "Powershell"
# Get the members of the string
$s | Get-Member
# Get the length of the string
$s.Length
# Get the first index of the string, started at 0
$s[0]
# Get charcter 3 till 6
$s[3..6]
# make everything lowercase
$s.ToLower()
# make everything upperrcase
$s.ToUpper()
# $s itself doesn't change
$s
# Get the methods of substring
$s.Substring.OverloadDefinitions
# Get the substring that starts at index 5
$s.Substring(5)
# Or get the first 5
$s.Substring(0,5)


$t = " Pluralsight   "
$t.Length
$t.TrimEnd()
$t.TrimStart()
$r = $t.Trim()
$r.Length


$f = "$PSScriptRoot\computers.txt"

Get-Content $f | Test-Connection -IPv4 -Count 1
# This will give errors because of the white spaces

Get-Content $f |
ForEach-Object {$_.Length -gt 0 ? (Test-Connection -IPv4 -Count 1 -ComputerName $_.Trim()) : (Write-Warning "Skipping blank")}

# or a better approach
Get-Content $f |
Where-Object ($_.length -gt 0) |
ForEach-Object (Test-Connection -IPv4 -Count 1 -ComputerName $_.Trim())


$s
# $s does have a replace method
$s.Replace.OverloadDefinitions
# Replace all e with 3
$s.replace("e","3")
# Be aware that replace is case-sensitive
$s.Replace("p", "x")
# or use the ignorecase
$s.Replace("p","x", "OrdinalIgnoreCase")
# or use the -replace wich isn't case-sensitve 
$s -replace "p","!"

# Replace o with () AND replace e with < AND replace h with &
$s.Replace("o","()").Replace("e","<").Replace("h","&")

# -replace can also use regular expressions
# for ex. replace all numbers with X
"Blah12345" -replace "\d","X"

# Split a string into an array and trim it
$data = "art | deco |1234|Sales"
$arr  = $data.Split("|").Trim()
$arr

# Get the first string in the array and get the first character from that string
$arr[0][0]

#
$name = @()
# Get the first entry in the array $arr[0] -> "art"
# Replace the first character $arr[0][0] -> "a"
# Replace the first character $arr[0][0] to a string first and then Upper it -> "A"

$name+= $arr[0].Replace($arr[0][0],$arr[0][0].ToString().ToUpper())
$name

# Get the 2nd entry in the array $arr[1] -> "deco"
# Replace the first character $arr[1][0] -> "d"
# Replace the first character $arr[1][0] to a string first and then Upper it -> "D"

$name+= $arr[1].Replace($arr[1][0],$arr[1][0].ToString().ToUpper())
$name