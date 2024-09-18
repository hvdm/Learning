# Greater than
5 -gt 2

# Greater than or equl to
2 -ge 2

# Less than
5 -lt 2

# Less than or equl to
2 -le 2

# Assignment operator
$i = 7

# Is $i equal to 7
$i -eq 7

# Is $i not equal to 7
$i -ne 7

# String comparisons are NOT case sensitive
"blah" -eq "BLAH"
# You can check if they are
"blah" -ceq "BLAH"

# Use widlcard comparisons
"foo" -like "f*"
"bar" -notlike "B*"
"bar" -clike "B*"

# Use the regular expression operator
# \d is a digit (a character in the range [0-9]), 
# and + means one or more times. 
# Thus, \d+ means match one or more digits.
"abc-1234" -match "\d+"
"abc-1234" -notmatch "\d+"

Get-Process | Where-Object company -match 'google' | Select-Object ID, name, Company

Get-Process | Where-Object company -notmatch 'micro' | Select-Object Company
