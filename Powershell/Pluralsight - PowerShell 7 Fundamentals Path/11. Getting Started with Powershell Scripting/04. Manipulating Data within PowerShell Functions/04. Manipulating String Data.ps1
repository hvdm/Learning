$variable1 = "The class instructor asked for a volunteer for a demonstration"
$variable2 = "Jones Tom"

# # # # # Using the -REPLACE Operator # # # # #
# Read variable and Replace Value (this wont change $variable1)
$variable1 -replace "instructor", "teacher"
# Output:
# The class teacher asked for a volunteer for a demonstration


# Read variable and Replace Value and Load it into a new Variable
$replacevar = $variable1 -replace "instructor", "teacher"
$replacevar
# Output:
# The class teacher asked for a volunteer for a demonstration


# Using Replace and RegEx to Swap Names
$variable2 = $variable2 -replace "([a-z]+)\s([a-z]+)", "$2, $1"
$variable2
Output

# Using Replace and RegEx to Remove Spaces
$variable1 -replace "[^a-z]"
# Output:
# Theclassinstructoraskedforavolunteerforademonstration


# # # # # Using the -SPLIT Operator # # # # #
# Split String Value using Default Delimiter
-split "January February March April May June"
# Output:
# January
# February
# March
# April
# May
# June

# Split String Value using Comma Delimiter
"January,February,March,April,May,June" -split ","
# Output:
# January
# February
# March
# April
# May
# June

# Split String Value into three using Comma Delimiter
"January,February,March,April,May,June" -split ",", 3
# Output:
# January
# February
# March,April,May,June

# Split variable Value using Default Delimiter
$variable = "January,February,March,April,May,June"
$variable -split ","
# Output:
# January
# February
# March
# April
# May
# June


# Using the .split()) Function
$variable = "January,February;March,April;May,June"
$variable.Split(',').Split(';')
# Output:
# January
# February
# March
# April
# May
# June


# # # # # Padding String Values # # # # #
# Standard Syntax
# .PadLeft ([nt]Width [,Padding Character])
# .PadRight([nt]Width [,Padding Character])

# Padding the Left of a Value
$variable = "Demonstration"
$variable.PadLeft(14, '#')
Output:
#Demonstration

# Padding the Right of a Value
$variable = "Demonstration"
$variable.PadRight(14, '#')
# Output:
# Demonstration#
