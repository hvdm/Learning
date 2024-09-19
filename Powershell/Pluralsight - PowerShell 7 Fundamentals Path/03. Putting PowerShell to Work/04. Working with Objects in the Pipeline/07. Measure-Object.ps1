# Lets start with Get-Vegetable
Get-Vegetable                                   # Get a list of all the veggies
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4078       12 corn                 Roasted  yellow
# 4064        4 tomato               Raw      red
# 4062       11 cucumber             Raw      green
# 4562       10 carrot               Raw      orange
# 4089       13 radish               Raw      red
# 4674       14 peas                 Steamed  green
# 4811       12 turnip               Boiled   purple
# 4725       18 russet potato        Fried    brown
# 4060       15 broccoli             Steamed  green
# 4067        7 zucchini             Raw      green
# 4090        4 spinach              Raw      green
# 4572        7 cauliflower          Steamed  white
# 3125       17 habanero pepper      Raw      orange
# 4677       16 Anaheim pepper       Raw      green
# 4088       19 red bell pepper      Sauteed  red
# 4081        6 eggplant             Fried    purple
# 4604        2 endive               Raw      green

Write-Host                                      # Empty line

# Now pipe it to Measure-Object
Get-Vegetable |                                 # Get a list of all the veggies
Measure-Object -Property Count -Sum             # Measure the count property and get the sum of that property
# Output:
# Count             : 17
# Average           : 
# Sum               : 187
# Maximum           : 
# Minimum           : 
# StandardDeviation : 
# Property          : Count

#
Get-Process |                                   # Get a list of all processes
Select-Object -First 1 |                        # Select only the first process
Format-Table                                    # Format it
# Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    -----      -----     ------      --  -- -----------
#     50   118,64     123,44     763,64   18176   1 1Password

# Get-Process
Get-Process |                                   # Get a list of all processes
Measure-Object `
    -Property WorkingSet -sum -Average          # Use the workingset and get the sum and average
# Output:
# Count             : 373
# Average           : 51494868,075067
# Sum               : 19207585792
# Maximum           : 
# Minimum           : 
# StandardDeviation : 
# Property          : WorkingSet

# Get-Process
Get-Process |                                   # Get a list of all processes
Measure-Object `
    -Property WorkingSet -sum -Average |        # Use the workingset and get the sum and average
Select-Object Count, Sum, Average               # select the Count, Sum and Average property
# Output
# Count   : 373
# Sum     : 19343372288
# Average : 51858906,9383378


