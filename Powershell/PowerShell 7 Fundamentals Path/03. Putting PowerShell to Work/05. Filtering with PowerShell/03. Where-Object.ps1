# Let's start with Get-Vegetable
Get-Vegetable                                   # Get a list of all Veggies
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4078       12 Corn                 Roasted  yellow
# 4064        4 Tomato               Raw      red
# 4062       11 Cucumber             Raw      green
# 4562       10 Carrot               Raw      orange
# 4089       13 Radish               Raw      red
# 4674       14 Peas                 Steamed  green
# 4811       12 Turnip               Boiled   purple
# 4725       18 Russet Potato        Fried    brown
# 4060       15 Broccoli             Steamed  green
# 4067        7 Zucchini             Raw      green
# 4090        4 Spinach              Raw      green
# 4572        7 Cauliflower          Steamed  white
# 3125       17 Habanero Pepper      Raw      orange
# 4677       16 Anaheim Pepper       Raw      green
# 4088       19 Red Bell Pepper      Sauteed  red
# 4081        6 Eggplant             Fried    purple
# 4604        2 Endive               Raw      green

Write-Host "================================================================================"

Get-Vegetable |                                 # Get a list of all Veggies
Where-Object Color -eq green                    # Where the color is green
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4062       11 Cucumber             Raw      green
# 4674       14 Peas                 Steamed  green
# 4060       15 Broccoli             Steamed  green
# 4067        7 Zucchini             Raw      green
# 4090        4 Spinach              Raw      green
# 4677       16 Anaheim Pepper       Raw      green
# 4604        2 Endive               Raw      green

Write-Host "================================================================================"
# Same output but with a more traditional syntax
Get-Vegetable |                                 # Get a list of all Veggies
Where-Object {$_.Color -eq 'green'}               # Where the color is green
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4062       11 Cucumber             Raw      green
# 4674       14 Peas                 Steamed  green
# 4060       15 Broccoli             Steamed  green
# 4067        7 Zucchini             Raw      green
# 4090        4 Spinach              Raw      green
# 4677       16 Anaheim Pepper       Raw      green
# 4604        2 Endive               Raw      green

Write-Host "================================================================================"

# Sometimes you need to check with Get-Member because Powershell deceives you.
# The State property is something that has been added to Powershell and isn't part of the Get-Vegetable.
# You do need CoockedState instead
Get-Vegetable |                                 # Get a list of all Veggies
Where-Object {$_.Color -eq 'green' -AND $_.CookedState -eq 'Raw'} | # Where the color is green
Sort-Object Count -Descending
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4677       16 Anaheim Pepper       Raw      green
# 4062       11 Cucumber             Raw      green
# 4067        7 Zucchini             Raw      green
# 4090        4 Spinach              Raw      green
# 4604        2 Endive               Raw      green

Write-Host "================================================================================"

Get-Service w* |                                # Get a list of all services that start with "w"
Where-Object {$_.Status -eq "Running"} |        # Get the services that are running only
Format-Table                                    # Format it
# Output:
# Status   Name               DisplayName
# ------   ----               -----------
# Running  W32Time            Windows Time
# Running  WbioSrvc           Windows Biometric Service
# Running  Wcmsvc             Windows Connection Manager
# Running  wcncsvc            Windows Connect Now - Config Registrar
# Running  WdiServiceHost     Diagnostic Service Host
# Running  WdiSystemHost      Diagnostic System Host
# Running  WebClient          WebClient
# Running  WFDSConMgrSvc      Wi-Fi Direct Services Connection Mana…
# Running  WinHttpAutoProxyS… WinHTTP Web Proxy Auto-Discovery Serv…
# Running  Winmgmt            Windows Management Instrumentation
# Running  WinRM              Windows Remote Management (WS-Managem…
# Running  WlanSvc            WLAN AutoConfig
# Running  WpnService         Windows Push Notifications System Ser…
# Running  WpnUserService_42… Windows Push Notifications User Servi…
# Running  WsAppService3      Wondershare Application Update Servic…
# Running  wscsvc             Security Center
# Running  WSearch            Windows Search
# Running  WwanSvc            WWAN AutoConfig

Write-Host "================================================================================"

# Get today's Date
$now = Get-Date
# Output: 04-09-2024

Get-ChildItem "$PSScriptRoot\*.ps1" |             # Early filtering - Get a dir listing of the scriptfiles in the current folder
Where-Object {$_.CreationTime -ge $now.AddDays(-7)}# Late Filtering - That are created within the last 7 days
# Output
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# la---            3-9-2024    15:05           2302 01. Filtering with Where-Object.ps1
# la---            4-9-2024    10:02           8259 02. Early Powershell Filtering.ps1
# la---            4-9-2024    10:22           5381 03. Where-Object.ps1

# Everything can be placed inside the code-block as long as it returns TRUE or FALSE

Write-Host "================================================================================"

Get-CimInstance -ClassName Win32_Process |      # Get a list of processes
Select-Object -First 5 |                        # Select only the first 5
Format-Table                                    # Format it
# # Output:
# ProcessId Name                HandleCount WorkingSetSize VirtualSize
# --------- ----                ----------- -------------- -----------
# 0         System Idle Process 0           8192           8192
# 4         System              9245        151552         4001792
# 124       Registry            0           105168896      185696256
# 520       smss.exe            53          1073152        2203360817152
# 868       csrss.exe           1101        6340608        2203422773248

# Measure how long it takes to run a piece of code
Measure-Command {
    Get-CimInstance -ClassName Win32_Process |      # Get a list of processes
    Where-Object WorkingSetSize -ge 50MB |          # Where the workinset >= 50MB
    Format-Table                                    # Format it
}
# Output:
# Days              : 0
# Hours             : 0
# Minutes           : 0
# Seconds           : 0
# Milliseconds      : 321
# Ticks             : 3215623
# TotalDays         : 3,72178587962963E-06
# TotalHours        : 8,93228611111111E-05
# TotalMinutes      : 0,00535937166666667
# TotalSeconds      : 0,3215623
# TotalMilliseconds : 321,5623

# This is another way
Measure-Command {
    Get-CimInstance -ClassName Win32_Process `
                    -Filter "WorkingSetSize >= 52428800" |    
    Format-Table                                    # Format it
}

# Output:
# Days              : 0
# Hours             : 0
# Minutes           : 0
# Seconds           : 0
# Milliseconds      : 163
# Ticks             : 1636123
# TotalDays         : 1,89366087962963E-06
# TotalHours        : 4,54478611111111E-05
# TotalMinutes      : 0,00272687166666667
# TotalSeconds      : 0,1636123
# TotalMilliseconds : 163,6123
