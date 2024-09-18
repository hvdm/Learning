
# AND Operator, result is TRUE when both expressions are true

$i = 4
# {4 -le 10} = true
# ($PSVersionTable.PSVersion.Major -ge 7) = true
# True -and True = True
($i -le 10) -and ($PSVersionTable.PSVersion.Major -ge 7)

$i = 20
# {20 -le 10} = false
# ($PSVersionTable.PSVersion.Major -ge 7) = true
# False -and True = False
($i -le 10) -and ($PSVersionTable.PSVersion.Major -ge 7)

# OR Operator, result is TRUE when both one of the expressions is true
$i = 20
# {20 -le 10} = false
# ($PSVersionTable.PSVersion.Major -ge 7) = true
# False -or True = False
($i -le 10) -or ($PSVersionTable.PSVersion.Major -ge 7)

# Combine Expressions
$i = 20
$name = "blah"
# {20 -ge 20} = True
# $name = "blah" = True OR $IsLinux = False
# True AND (True OR False) = Ttue
($i -ge 20) -and (($name = "blah" -or $IsLinux))

# NOT Operator
# True
Test-Path "C:\Windows\notepad.exe"
#False
-NOT (Test-Path "C:\Windows\notepad.exe")



