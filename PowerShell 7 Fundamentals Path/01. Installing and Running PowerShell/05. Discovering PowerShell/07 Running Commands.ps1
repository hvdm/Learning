# See what the command Get-Vegetable does
Get-Vegetable
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4078       12 corn                 Raw      yellow
# 4064        4 tomato               Raw      red
# 4062       11 cucumber             Raw      green
# 4562       10 carrot               Raw      orange
# 4089       13 radish               Raw      red
# 4674       14 peas                 Raw      green
# 4811       12 turnip               Raw      purple
# 4725       18 russet potato        Raw      brown
# 4060       15 broccoli             Raw      green
# 4067        7 zucchini             Raw      green
# 4090        4 spinach              Raw      green
# 4572        7 cauliflower          Raw      white
# 3125       17 habanero pepper      Raw      orange
# 4677       16 Anaheim pepper       Raw      green
# 4088       19 red bell pepper      Raw      red
# 4081        6 eggplant             Raw      purple
# 4604        2 endive               Raw      green

# Get a list of all services
Get-Service | ft

# Get a list of the BITS services
Get-Service BITS

# Get the help for Get-Service
#Help Get-Service

# Get a list of services which contains *micro* in the displayname
Get-Service -DisplayName *micro*
