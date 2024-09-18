# the ?? is called null-coalescing operator

$n = $null
# if the left side is null then evaluate the right side
# if the left side is NOT null then the right side is never used
$n ?? (Write-Warning "The variable is null")

$v = $PSEdition ?? ("unknown")
$v


# the ??= is called null-coalescing assignment operator
# Assign the value of the right hand to the left hand, ig the left hand is null
$n = $null
$n ??= "foo"
$n

$n ??= "bar"
$n


$p = Get-Process | Where-Object {$_.WorkingSet -gt 1GB}
$p ??= 0
$p

# ?. = null-condition operator
# Applies when acccessing a member of an object
$p = Get-Process -id $PID
$p.ToString()

# Above works because $p is NOT null
# Below fails because $p is null
$p = $null
$p.ToString()
# error: You cannot call a method on a null-valued expression.

${p}?.ToString()


$var = ${p}?.ToString() ?? "method failed"
$var