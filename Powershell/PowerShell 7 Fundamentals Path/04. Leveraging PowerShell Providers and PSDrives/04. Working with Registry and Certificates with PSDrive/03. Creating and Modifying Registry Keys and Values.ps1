# Set the location to HKCU because we're not running as admin
Set-Location HKCU:\
# Create a new Registry Key
New-Item .\SOFTWARE\App1
# Output:
# Hive: HKEY_CURRENT_USER\SOFTWARE

# Name                           Property
# ----                           --------
# App1
# You might want to check it in Regedit as well

# Create a New-ItemProperty
New-ItemProperty .\SOFTWARE\App1\ -Name "Just_A_ItemProperty" -Value "Just_A_ItemPropertyValue"
# Output:
# Just_A_ItemProperty : Just_A_ItemPropertyValue
# PSPath              : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE\App1\
# PSParentPath        : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE
# PSChildName         : App1
# PSDrive             : HKCU
# PSProvider          : Microsoft.PowerShell.Core\Registry


# Rename the Registry Key
Set-Location .\SOFTWARE
Rename-Item -Path .\App1\ -NewName App2 -PassThru
# By using PassTru, Rename-Item returns a value
# Output:
# App2                           Just_A_ItemProperty : Just_A_ItemPropertyValue

# Rename the ItemProperty (App1 is now App2)
Rename-ItemProperty -Path App2 -Name "Just_A_ItemProperty" -NewName "Just_A_NEW_ItemProperty" -PassThru
# Output:
# Just_A_NEW_ItemProperty : Just_A_ItemPropertyValue
# PSPath                  : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE\App2
# PSParentPath            : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE
# PSChildName             : App2
# PSDrive                 : HKCU
# PSProvider              : Microsoft.PowerShell.Core\Registry

# Change the Value of an ItemProperty
Set-ItemProperty -path App2 -Name "Just_A_NEW_ItemProperty" -Value "Just_A_NEW_ItemPropertyValue" -PassThru
# Output:
# Just_A_NEW_ItemProperty : Just_A_NEW_ItemPropertyValue
# PSPath                  : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE\App2
# PSParentPath            : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\SOFTWARE
# PSChildName             : App2
# PSDrive                 : HKCU
# PSProvider              : Microsoft.PowerShell.Core\Registry


