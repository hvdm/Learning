# Sorting Objects
# use Get-Vegetable
Get-Vegetable |                                 # Get all the veggies
Format-Table                                    # Format it
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



Get-Vegetable |                                 # Get all the veggies
Sort-Object -Property Name |                    # Sort the output by Name (default -s ascending)
Format-Table                                    # Format it
# # Output:
# UPC     Count Name                 State    Color 
# ---     ----- ----                 -----    ----- 
# 4677       16 Anaheim pepper       Raw      green 
# 4060       15 broccoli             Steamed  green 
# 4562       10 carrot               Raw      orange
# 4572        7 cauliflower          Steamed  white 
# 4078       12 corn                 Roasted  yellow
# 4062       11 cucumber             Raw      green 
# 4081        6 eggplant             Fried    purple
# 4604        2 endive               Raw      green
# 3125       17 habanero pepper      Raw      orange
# 4674       14 peas                 Steamed  green
# 4089       13 radish               Raw      red
# 4088       19 red bell pepper      Sauteed  red
# 4725       18 russet potato        Fried    brown
# 4090        4 spinach              Raw      green
# 4064        4 tomato               Raw      red
# 4811       12 turnip               Boiled   purple
# 4067        7 zucchini             Raw      green

Get-Vegetable |                                 # Get all the veggies
Sort-Object -Property Name -Descending |        # Sort the output by Name (default -s ascending)
Format-Table                                    # Format it
# Output:
# UPC     Count Name                 State    Color 
# ---     ----- ----                 -----    ----- 
# 4067        7 zucchini             Raw      green 
# 4811       12 turnip               Boiled   purple
# 4064        4 tomato               Raw      red   
# 4090        4 spinach              Raw      green 
# 4725       18 russet potato        Fried    brown 
# 4088       19 red bell pepper      Sauteed  red   
# 4089       13 radish               Raw      red
# 4674       14 peas                 Steamed  green
# 3125       17 habanero pepper      Raw      orange
# 4604        2 endive               Raw      green
# 4081        6 eggplant             Fried    purple
# 4062       11 cucumber             Raw      green
# 4078       12 corn                 Roasted  yellow
# 4572        7 cauliflower          Steamed  white
# 4562       10 carrot               Raw      orange
# 4060       15 broccoli             Steamed  green
# 4677       16 Anaheim pepper       Raw      green



Get-Vegetable |                                 # Get all the veggies
Sort-Object -Property State |                   # Sort the output by State
Format-Table                                    # Format it
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4677       16 Anaheim pepper       Raw      green
# 4060       15 broccoli             Steamed  green
# 4562       10 carrot               Raw      orange
# 4572        7 cauliflower          Steamed  white
# 4078       12 corn                 Roasted  yellow
# 4062       11 cucumber             Raw      green
# 4081        6 eggplant             Fried    purple
# 4604        2 endive               Raw      green
# 3125       17 habanero pepper      Raw      orange
# 4674       14 peas                 Steamed  green
# 4089       13 radish               Raw      red
# 4088       19 red bell pepper      Sauteed  red
# 4725       18 russet potato        Fried    brown
# 4090        4 spinach              Raw      green
# 4064        4 tomato               Raw      red
# 4811       12 turnip               Boiled   purple
# 4067        7 zucchini             Raw      green

# This isnt sorted as expected
# Find out with Get-Member
Get-Vegetable | Get-Member
# Output:
# TypeName: PSTeachingTools.PSVegetable

# Name        MemberType Definition
# ----        ---------- ----------
# Equals      Method     bool Equals(System.Object obj)
# GetHashCode Method     int GetHashCode()
# GetType     Method     type GetType()
# Peel        Method     void Peel()
# Prepare     Method     void Prepare(PSTeachingTools.VegStatus State)
# ToString    Method     string ToString()
# Color       Property   PSTeachingTools.VegColor Color {get;}
# CookedState Property   PSTeachingTools.VegStatus CookedState {get;set;}
# Count       Property   int Count {get;set;}
# IsPeeled    Property   bool IsPeeled {get;set;}
# IsRoot      Property   bool IsRoot {get;}
# Name        Property   string Name {get;}
# UPC         Property   int UPC {get;}

# There is no State property
# Instead there is a CookedState
# CookedState Property   PSTeachingTools.VegStatus CookedState {get;set;}

Get-Vegetable |                                 # Get all the veggies
Sort-Object -Property CookedState |             # Sort the output by CookedState
Format-Table                                    # Format it
# Output:
# UPC  Count Name            State   Color
# ---  ----- ----            -----   -----
# 4604     2 endive          Raw     green
# 4064     4 tomato          Raw     red
# 4062    11 cucumber        Raw     green
# 4562    10 carrot          Raw     orange
# 4089    13 radish          Raw     red
# 4677    16 Anaheim pepper  Raw     green
# 3125    17 habanero pepper Raw     orange
# 4067     7 zucchini        Raw     green
# 4090     4 spinach         Raw     green
# 4811    12 turnip          Boiled  purple
# 4572     7 cauliflower     Steamed white
# 4060    15 broccoli        Steamed green
# 4674    14 peas            Steamed green
# 4088    19 red bell pepper Sauteed red
# 4725    18 russet potato   Fried   brown
# 4081     6 eggplant        Fried   purple
# 4078    12 corn            Roasted yellow

# It is still not fully sorted as it should be
# This is because it's sorted by its numeric value


# Another example when sorting isn't sorted as you think it should
Get-Service |                                   # Get a list of all services
Sort-Object -Descending |                       # Sort it, descending
Format-Table                                    # Format it
# Output:
# Status  Name                                      DisplayName
# ------  ----                                      -----------
# Stopped XboxNetApiSvc                             Xbox Live Networking Service
# Stopped XboxGipSvc                                Xbox Accessory Management Service
# Stopped XblGameSave                               Xbox Live Game Save
# Stopped XblAuthManager                            Xbox Live Auth Manager
# Running WwanSvc                                   WWAN AutoConfig
# Stopped wuauserv                                  Windows Update
# Running WSearch                                   Windows Search
# Running wscsvc                                    Security Center
# Running WsAppService3                             Wondershare Application Update Service 3.0
# Running WpnUserService_42a4d1                     Windows Push Notifications User Service_42a4d1
# Running WpnService                                Windows Push Notifications System Service
# Stopped WPDBusEnum                                Portable Device Enumerator Service
# Stopped WpcMonSvc                                 Parental Controls
# ...

# Let's find out why
Get-Service Bits |                              # Get the BITS service
Get-Member Status                               # Get the members of this service
# Output:
# TypeName: System.Service.ServiceController#StartupType

# Name   MemberType Definition
# ----   ---------- ----------
# Status Property   System.ServiceProcess.ServiceControllerStatus Status {get;}
# Check if it is a numeration
[enum]::GetNames("System.ServiceProcess.ServiceControllerStatus")
# Output:
# Stopped
# StartPending
# StopPending
# Running
# ContinuePending
# PausePending
# Paused
# You do see names here, so this means it;s an enumeration and therefor it's sorts on that instead of it's name

# Let's do a multiple sort
# It sorts first by name, when a duplicate is found it sort that by ID
Get-Process -Name d* |                          # Get all the processes that start with 'd'  
Sort-Object Name, Id                            # Sort them by Name and then by ID
# Output: 
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    -----      -----     ------      --  -- -----------
#     21    13,01      22,32       0,00    3132   0 dasHost (1)
#      6     1,00       4,20       0,00    4352   0 dasHost (2)
#      5     0,82       4,11       0,00   25596   0 dasHost (3)
#     11     2,66       8,13       0,00    2884   0 DiagsCap
#     24     9,13      11,84       6,48    6424   1 dllhost (1)
#     18     3,88      11,29       0,00   12396   0 dllhost (2)
#     12     3,16      10,89       4,84   18288   1 dllhost (3)
#     15     4,86      13,41       0,00   22024   0 dllhost (4)
#      9     2,38       6,97       0,05   27284   1 dllhost (5)
#      8     1,62       5,39  28.546,48   14140   1 dptf_helper
#    356   172,06     215,96       0,00    4624   0 DSAService
#     45    76,36      67,02      73,56   14448   1 DSATray
#     43    29,21      35,37       0,00    5560   0 DSAUpdateService
#     90   302,27     163,41       0,00    2056   1 dwm
