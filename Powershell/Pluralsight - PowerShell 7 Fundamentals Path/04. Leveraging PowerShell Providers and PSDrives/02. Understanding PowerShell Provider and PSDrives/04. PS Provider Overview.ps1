# FileSystem Provider
# -------------------
#   Manage Files and Directories
#   Each logical drive has a PSdrive associoated with it
#   Temp PS drive is mapped to the user's Temp folder. ONLY IN PS7


# Registry Provider
# -----------------
#   Manage registry Entries
#   Two PS drives available: HKLM and HKCU


# Alias Provider
# --------------
# Provides the aliases needed
Get-ChildItem alias:\ |                         # Get a list of aliases
Select-Object DisplayName                       # Select the displayname


# Environment Provider
# --------------------
# Manage the environment variables


# Function Provider
# -----------------
# Manage built-in and user  defined Powershell functions
Get-ChildItem function:\                        # Get a list of aliases
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Function        __VSCode-Escape-Value
# Function        A:
# Function        B:
# Function        C:
# Function        cd..
# Function        cd\
# Function        cd~
# Function        Clear-Host                                         0.2.0      PowerShellEditorServices.Commands
# Function        Compress-Completions
# Function        ConvertFrom-ScriptExtent                           0.2.0      PowerShellEditorServices.Commands
# Function        ConvertTo-ScriptExtent                             0.2.0      PowerShellEditorServices.Commands
# Function        D:
# ....
# Function        TabExpansion2
# Function        Test-ScriptExtent                                  0.2.0      PowerShellEditorServices.Commands
# Function        U:
# Function        Unregister-EditorCommand                           0.2.0      PowerShellEditorServices.Commands
# Function        V:
# Function        W:
# Function        X:
# Function        Y:
# Function        Z:


# Variable Provider
# -----------------
Get-ChildItem Variable:\
# Output:
# Name                           Value
# ----                           -----
# __LastHistoryId                56
# ?                              True
# ^                              .
# AnsiVegColor                   {[Purple, ], [Brown, ], [Orange, ], [Green, ]…}
# args                           {}
# ConfirmPreference              High
# DebugPreference                SilentlyContinue
# EnabledExperimentalFeatures    {}
# Error                           
# ErrorActionPreference          Continue
# ErrorView                      ConciseView
# ExecutionContext               System.Management.Automation.EngineIntrinsics
# false                          False
# FormatEnumerationLimit         4
# ......

# get-variable IsWindows
# Name                           Value
# ----                           -----
# IsWindows                      True


# Certificate Provider
# --------------------
# Manage Certificates through PowerShell


# WSMan Provider
# --------------
# Access to WS-Management config settings
# Configure WinRM through WSMAN drive


# Alias
# Certificate   
# Environment
# Function
# HKEY_CURRENT_USER
# HKEY_LOCAL_MACHINE
# Temp
# Variable
# WSMan