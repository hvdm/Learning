# Adding all different kind of types to the array
$n = "Foo", "Bar", "#", "%", 1, 5, 7, "!", "Alpha", "Omega"
$n

# Get the members
$n | Get-Member
# TypeName: System.String
# TypeName: System.Int32

# Check to see if $n contains the string FOO
$n -contains "FOO"
$n -contains "xyz"
$n -notcontains "xyz"

# You can also test if something is in
"xyz" -in $n
"xyz" -notin $n

$list = "rdpclip", "searchapp", "spoolsv"
Get-Process | Where-Object {$list -contains $_.Name} | ft

