
Get-Vegetable                                   # Get a list of all Veggies
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

Write-Host "================================================================================"

# Help Get-Vegetable
# NAME
#     Get-Vegetable

# SYNOPSIS
#     Get vegetable objects


# SYNTAX
#     Get-Vegetable [[-Name] <String>] [-RootOnly] [<CommonParameters>]


Get-Vegetable -Name radish                      # By using the Name, only that item is shown (filtered)
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4089       13 radish               Raw      red

Write-Host "================================================================================"

Get-Vegetable -Name r*                          # By using the Name, only that item is shown (filtered)
# Output:
# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4089       13 radish               Raw      red
# 4725       18 russet potato        Fried    brown
# 4088       19 red bell pepper      Sauteed  red

Write-Host "================================================================================"

# Help Get-Service
# NAME
#     Get-Service

# SYNOPSIS
#     Gets the services on the computer.


# SYNTAX
#     Get-Service [-DependentServices] -DisplayName <System.String[]> [-Exclude <System.String[]>] [-Include <System.String[]>] [-RequiredServices] [<CommonParameters>]
#     Get-Service [-DependentServices] [-Exclude <System.String[]>] [-Include <System.String[]>] [-InputObject <System.ServiceProcess.ServiceController[]>] [-RequiredServices] [<CommonParameters>]
#     Get-Service [[-Name] <System.String[]>] [-DependentServices] [-Exclude <System.String[]>] [-Include <System.String[]>] [-RequiredServices] [<CommonParameters>]

Get-service k* |                                # Get all services that start with "k"
Format-Table                                    # Format it
# Output:
# Status   Name               DisplayName
# ------   ----               -----------
# Running  KeyIso             CNG Key Isolation
# Stopped  KtmRm              KtmRm for Distributed Transaction Coo…

Write-Host "================================================================================"

Get-service k* |                                # Get all services that start with "k"
Format-Table                                    # Format it
# Output:
# Status   Name               DisplayName
# ------   ----               -----------
# Running  KeyIso             CNG Key Isolation
# Stopped  KtmRm              KtmRm for Distributed Transaction Coo…

Write-Host "================================================================================"
Get-service k* -Exclude Kt* |                   # Get all services that start with "k"
Format-Table                                    # Format it
# Output:
# Status   Name               DisplayName
# ------   ----               -----------
# Running  KeyIso             CNG Key Isolation

Write-Host "================================================================================"
Get-ChildItem "$PSScriptroot\*.ps1"             # Get a list of ps1 file in the current folder
Write-Host "================================================================================"
Get-ChildItem "$PSScriptroot" -filter *.ps1     # Get a list of ps1 file in the current folder using filter
Write-Host "================================================================================"
Get-ChildItem "$PSScriptroot" -include *.ps1    # This isn't working
Get-ChildItem "$PSScriptroot" `
    -include *.ps1 -Exclude 02* -Recurse        # For include and exclude you MUST use recurse as well
Write-Host "================================================================================"

Get-ChildItem alias: -Filter c*                 # This gives an error:
# Output: 
# Cannot call method. The provider does not support the use of filters.
# The alias provider doesnt support filtering

Get-ChildItem alias: -include c* -Recurse |     # This gives an error:
Format-Table                                    # Format it
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           clc -> Clear-Content
# Alias           cli -> Clear-Item
# Alias           clp -> Clear-ItemProperty
# Alias           clv -> Clear-Variable
# Alias           cpi -> Copy-Item
# Alias           cvpa -> Convert-Path
# Alias           clear -> Clear-Host
# Alias           compare -> Compare-Object
# Alias           cpp -> Copy-ItemProperty
# Alias           cat -> Get-Content
# Alias           cp -> Copy-Item
# Alias           cnsn -> Connect-PSSession
# Alias           cd -> Set-Location
# Alias           cls -> Clear-Host
# Alias           chdir -> Set-Location
# Alias           copy -> Copy-Item
# Alias           clhy -> Clear-History

# Another example
Get-CimInstance -ClassName Win32_SystemDriver | # Get a list of all system drivers on the machine
Format-Table                                    # Format it
# Output:
# DisplayName                                                                      Name                               State   Status Started
# -----------                                                                      ----                               -----   ------ -------
# 1394 OHCI Compliant Host Controller                                              1394ohci                           Stopped OK       False
# 3ware                                                                            3ware                              Stopped OK       False
# Microsoft ACPI Driver                                                            ACPI                               Running OK        True
# ACPI Devices driver                                                              AcpiDev                            Stopped OK       False
# Microsoft ACPIEx Driver                                                          acpiex                             Running OK        True
# ACPI Processor Aggregator Driver                                                 acpipagr                           Running OK        True
# ACPI Power Meter Driver                                                          AcpiPmi                            Stopped OK       False
# ACPI Wake Alarm Driver                                                           acpitime                           Stopped OK       False
# .......

# Filter it to get one(s) that a running and the service type is FileSystem Driver
Get-CimInstance -ClassName Win32_SystemDriver | # Get a list of all system drivers on the machine
Format-Table                                    # Format it
Write-Host "================================================================================"
Get-CimInstance `
  -ClassName Win32_SystemDriver `
  -Filter "state = 'running' and servicetype = 'File system driver'"| 
Format-Table                                    # Format it
