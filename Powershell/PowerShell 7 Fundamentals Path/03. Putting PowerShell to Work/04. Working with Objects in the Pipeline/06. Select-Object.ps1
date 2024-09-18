# Lets start with Get-Vegetable
Get-Vegetable
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

# Now select the first 3 objects
Get-Vegetable |                                 # Get all veggies
Select-Object -First 3                          # Select the first 3
# Output:
# 4078       12 corn                 Roasted  yellow
# 4064        4 tomato               Raw      red
# 4062       11 cucumber             Raw      green

Write-Host                                      # Empty line

# Now select a gew properties
Get-Vegetable |                                 # Get all veggies
Select-Object -Property Count, Name, State |    # Select the first 3
Format-Table                                    # Format it
# Output:
# Count Name            State
# ----- ----            -----
#    12 corn
#     4 tomato
#    11 cucumber
#    10 carrot
#    13 radish
#    14 peas
#    12 turnip
#    18 russet potato
#    15 broccoli
#     7 zucchini
#     4 spinach
#     7 cauliflower
#    17 habanero pepper
#    16 Anaheim pepper
#    19 red bell pepper
#     6 eggplant
#     2 endive

#
Get-Vegetable |                                 # Get all veggies
Select-Object -first 1 -Property *              # Select all the properties and show only the first veggie
# Output:
# Name        : corn
# Count       : 12
# UPC         : 4078
# CookedState : Roasted
# IsRoot      : False
# IsPeeled    : False
# Color       : yellow

Get-Vegetable |                                 # Get all veggies
Select-Object -first 1 -Property *              # Select all the properties and show only the first veggie

# Now you know what properties are available you can use the one needed
Get-Vegetable |                                 # Get all veggies
Select-Object Count, Name, CookedState |        # Select the Count, Name and CookedState property
Format-Table                                    # Format it
# Output:
# Count Name            CookedState
# ----- ----            -----------
#    12 corn                Roasted
#     4 tomato                  Raw
#    11 cucumber                Raw
#    10 carrot                  Raw
#    13 radish                  Raw
#    14 peas                Steamed
#    12 turnip               Boiled
#    18 russet potato         Fried
#    15 broccoli            Steamed
#     7 zucchini                Raw
#     4 spinach                 Raw
#     7 cauliflower         Steamed
#    17 habanero pepper         Raw
#    16 Anaheim pepper          Raw
#    19 red bell pepper     Sauteed
#     6 eggplant              Fried
#     2 endive                  Raw

# Now do the same with a normal command
Get-Service |                                   # Get all services
Select-Object Name, StartType |                 # Select the Count, Name and CookedState property
Format-Table                                    # Format it

# Now do the same with the System eventlog
Get-WinEvent -ListLog System                    # Get info about the System eventlog
# Output:
# LogMode  MaximumSizeInBytes RecordCount LogName
# -------  ------------------ ----------- -------
# Circular            5242880        9393 System

# Now use Select-Object to get all the properties
Get-WinEvent -ListLog System |                  # Get info about the System eventlog
Select-Object *                                 # Select all its properties
# Output:
# LogMode  MaximumSizeInBytes RecordCount LogName
# -------  ------------------ ----------- -------
# Circular            5242880        9393 System

# FileSize                       : 5246976
# IsLogFull                      : False
# LastAccessTime                 : 1-9-2024 14:31:27
# LastWriteTime                  : 1-9-2024 14:31:27
# OldestRecordNumber             : 101718
# RecordCount                    : 9393
# LogName                        : System
# LogType                        : Administrative
# LogIsolation                   : System
# IsEnabled                      : True
# IsClassicLog                   : True
# SecurityDescriptor             : 
# LogFilePath                    : %SystemRoot%\System32\Winevt\Logs\System.evtx
# MaximumSizeInBytes             : 5242880
# LogMode                        : Circular
# OwningProviderName             : 
# ProviderNames                  : {Workstation, WMIxWDM, WinNat, Windows Script Host…}
# ProviderLevel                  : 
# ProviderKeywords               : 
# ProviderBufferSize             : 64
# ProviderMinimumNumberOfBuffers : 0
# ProviderMaximumNumberOfBuffers : 16
# ProviderLatency                : 1000
# ProviderControlGuid            : 


# Get info about ALL eventlogs
Get-WinEvent -ListLog * |                       # Get info about all eventlogs
Select-Object LogName, RecordCount, 
              MaximumSizeInBytes, FileSize |    # Select a few properties
Format-Table                                    # Format it
# Output:
# LogName                                                                       RecordCount MaximumSizeInBytes FileSize
# -------                                                                       ----------- ------------------ --------
# Windows PowerShell                                                                   8016           15728640 15732736
# Visual Studio                                                                           0            1052672    69632
# USER_ESRV_SVC_QUEENCREEK                                                                0            1052672    69632
# System                                                                               9393            5242880  5246976
# OneApp_IGCC                                                                          3411            1052672  1052672
# ...

Get-WinEvent -ListLog * |                       # Get info about all eventlogs
Select-Object LogName, RecordCount, 
              MaximumSizeInBytes, FileSize |    # Select a few properties
Out-GridView                                    # Output to a graphical view


