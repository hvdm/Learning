# Split the string into an array of elements
$k = "Two Words"
$k.Split()

# Split the string into an array of elements using a delimiter
$s = "This.Is.A.String"
$s.Split(".")

# Split the string into an array of elements using a delimiter and stop after 3 splits
$m = "Powershell 7 Is Awsome Sauce "
$m.Split(" ", 3)

$r = "Data Foo Bar 44 Field1 88 Field2 435 Field3"

# Split on a space, have at least 2 digits, and another space
$d = $r -Split "\s\d{2,}\s"

$d.count
# output: 4
$d

# Output in $d
# Data Foo Bar
# Field1
# Field2
# Field3

$d[0].Split()


# Joining things together
$arr = 2,4,6,8
$arr

-join $arr
# Using a delimiter
$arr -join " "
$arr -join "-"

