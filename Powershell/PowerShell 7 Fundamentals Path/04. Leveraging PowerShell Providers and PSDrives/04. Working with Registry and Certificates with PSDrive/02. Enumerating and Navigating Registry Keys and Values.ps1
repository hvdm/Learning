# Start in registry HKLM
Set-Location HKLM:\

# Get the details of the current location 
Get-Item .\
# Output:
# Hive: 

# Name                           Property
# ----                           --------
# HKEY_LOCAL_MACHINE

# Get all items in the current location 
Get-Item *
# Output:
# Name                           Property
# ----                           --------
# HARDWARE
# SAM
# Get-Item: Requested registry access is not allowed.       <-- this is because I am not running as admin
# SOFTWARE
# SYSTEM


Get-ChildItem .\
# Output:
# Name                           Property
# ----                           --------
# HARDWARE
# SAM
# Get-Item: Requested registry access is not allowed.       <-- this is because I am not running as admin
# SOFTWARE
# SYSTEM


# Get the details with the full path
Get-Item .\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine
# Output:    
# Hive: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1
# Name                           Property
# ----                           --------
# PowerShellEngine               ApplicationBase         : C:\Windows\System32\WindowsPowerShell\v1.0
#                                ConsoleHostAssemblyName : Microsoft.PowerShell.ConsoleHost, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf385 
#                                6ad364e35, ProcessorArchitecture=msil
#                                ConsoleHostModuleName   : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell.ConsoleHost.dll
#                                PowerShellVersion       : 2.0
#                                PSCompatibleVersion     : 1.0, 2.0
#                                RuntimeVersion          : v2.0.50727

# Query a property
Get-ItemProperty .\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine -Name ApplicationBase
# Output:
# ApplicationBase : C:\Windows\System32\WindowsPowerShell\v1.0
# PSPath          : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine
# PSParentPath    : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1
# PSChildName     : PowerShellEngine
# PSDrive         : HKLM
# PSProvider      : Microsoft.PowerShell.Core\Registry

# Search for registry keys with "PowerShell" in the name
####Get-ChildItem .\ -Include "PowerShell" -Recurse
# Output:
# Hive: HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell

# Name                           Property
# ----                           --------
# Powershell                     (default)             : @shell32.dll,-8508
#                                Extended              :
#                                NoWorkingDirectory    :
#                                ShowBasedOnVelocityId : 6527944

#     Hive: HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell

# Name                           Property
# ----                           --------
# Powershell                     (default)             : @shell32.dll,-8508
#                                Extended              :
#                                NoWorkingDirectory    :
#                                ShowBasedOnVelocityId : 6527944

#     Hive: HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Drive\shell

# Name                           Property
# ----                           --------
# Powershell                     (default)             : @shell32.dll,-8508
#                                Extended              :
#                                NoWorkingDirectory    :
#                                ShowBasedOnVelocityId : 6527944

# .......

# Running registry commands onm remote computer.
# Get-item / Get-ChildItem don't support -ComputerName
# Use Invoke-Command instead
# Using the same command as earlier: Get-ItemProperty .\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine -Name ApplicationBase
Invoke-Command -ComputerName SRV1 -ScriptBlock { Get-ItemProperty .\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine -Name ApplicationBase }
# Output:
# ApplicationBase : C:\Windows\System32\WindowsPowerShell\v1.0
# PSPath          : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine
# PSParentPath    : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1
# PSChildName     : PowerShellEngine
# PSDrive         : HKLM
# PSProvider      : Microsoft.PowerShell.Core\Registry
# PSComputerName  : SRV1
# RunspaceId      : 


# Navigate through the registry keys
Get-PSDrive -Name HK* |                         # Get a list of Root Keys
Format-Table                                    # Format output as table
# Output:
# Name           Used (GB)     Free (GB) Provider      Root                                                                           CurrentLocation 
# ----           ---------     --------- --------      ----                                                                           --------------- 
# HKCU                                   Registry      HKEY_CURRENT_USER
# HKLM                                   Registry      HKEY_LOCAL_MACHINE

# Set the location
Set-Location HKLM:\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine

# List the properties
Get-ItemProperty .\
# Output:
# ApplicationBase         : C:\Windows\System32\WindowsPowerShell\v1.0
# ConsoleHostAssemblyName : Microsoft.PowerShell.ConsoleHost, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, ProcessorArchitectur 
#                           e=msil
# ConsoleHostModuleName   : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell.ConsoleHost.dll
# PowerShellVersion       : 2.0
# PSCompatibleVersion     : 1.0, 2.0
# RuntimeVersion          : v2.0.50727
# PSPath                  : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine
# PSParentPath            : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1
# PSChildName             : PowerShellEngine
# PSDrive                 : HKLM
# PSProvider              : Microsoft.PowerShell.Core\Registry




