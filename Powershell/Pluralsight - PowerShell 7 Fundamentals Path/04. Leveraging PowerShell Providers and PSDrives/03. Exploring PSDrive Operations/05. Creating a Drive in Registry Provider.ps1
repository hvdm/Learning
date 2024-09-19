# Map a registry key
New-PSDrive -Root HKLM:\SOFTWARE\Microsoft\PowerShellCore -PSProvider Registry -Name PowerShellCoreRegistry
# Output:
# Name           Used (GB)     Free (GB) Provider      Root                                                                           CurrentLocation
# ----           ---------     --------- --------      ----                                                                           --------------- 
# PowerShel…                             Registry      HKEY_LOCAL_MACHINE\SOFTWARE\Micros…

Set-Location PowerShellCoreRegistry:\
Get-ChildItem
# Output:
# Hive: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShellCore

# Name                           Property
# ----                           --------
# InstalledVersions
# InstallerProperties            InstallFolder                        : C:\Program Files\PowerShell\
#                                AddToPath                            : 1
#                                RegisterManifest                     : 1
#                                EnablePSRemoting                     : 0
#                                DisableTelemetry                     : 1
#                                AddExplorerContextMenuOpenPowerShell : 0
#                                AddFileContextMenuRunPowerShell      : 0
#                                UseMU                                : 1
#                                EnableMU                             : 1
# ProgramsMenuShortcut

