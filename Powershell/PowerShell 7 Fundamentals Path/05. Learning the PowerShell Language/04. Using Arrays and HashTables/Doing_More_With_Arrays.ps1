# Create an empty array
$t =@()

Write-Host "----------"

# Add some elements to $t
$t += (Get-Random -Minimum 0 -Maximum 10 -Count 3)
$t

Write-Host "----------"

# Create an array
$c = "*", "#", "@", "<", "?", "]", "\"
$c

Write-Host "----------"

# Get 3 random characters from $c and place them in $t
$t += ($c | Get-Random -Count 3)
$t

Write-Host "----------"

# Create a string
$w = "BaNanA"
# Strings can be treated like an array
$w[0..2]

Write-Host

# Create an array from a string
$w.ToCharArray()

Write-Host "----------"

# Add $w to $t
$t += $w.ToCharArray()
$t

Write-Host "----------"

# Randomize $t, get 9 elements fro $t
$rando = $t | Get-Random -Count 9
$rando

Write-Host "----------"

# Join them all together in $pass
$pass = -join $rando
$pass

Write-Host "----------"

#Get the elements from $t
$t

Write-Host

# Get the first element of $t
$t[0]

# This wil give an error because $var doesn't exist
$var

# Check if index[0] in $var1 is null
${var1}?[0] ?? (Write-Warning "Can't find the item in the array")

Write-Host "----------"

# Removing item's from an array
# You can't remove them directly, you need to rebuild the entire array
$a = 1..10
$a = $a | where {$_ -ge 6}
$a