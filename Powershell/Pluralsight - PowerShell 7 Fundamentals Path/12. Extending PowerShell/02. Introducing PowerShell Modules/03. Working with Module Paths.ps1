# Get the current PSModulePath
$Env:PSModulePath -split ";"
# Output:
# c:\Users\<username>\Documents\PowerShell\Modules
# -------------------------------------------------------------
# Those are only available in PowerShell 7 and not in Windows PowerShell
# C:\Program Files\PowerShell\Modules
# c:\program files\powershell\7\Modules
# -------------------------------------------------------------
# C:\Program Files\WindowsPowerShell\Modules
# C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
# c:\Users\<username>\.vscode\extensions\ms-vscode.powershell-2024.2.2\modules

# Add custom path to PSModulePath
# This is for THIS Session Only
$env:PSModulePath = $env:PSModulePath + ";Q:\PowerShell\HMUtils"

# Get the current PSModulePath
$Env:PSModulePath -split ";"
# Output:
# c:\Users\<username>\Documents\PowerShell\Modules
# -------------------------------------------------------------
# Those are only available in PowerShell 7 and not in Windows PowerShell
# C:\Program Files\PowerShell\Modules
# c:\program files\powershell\7\Modules
# -------------------------------------------------------------
# C:\Program Files\WindowsPowerShell\Modules
# C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
# c:\Users\<username>\.vscode\extensions\ms-vscode.powershell-2024.2.2\modules
# Q:\PowerShell\HMUtils <---- ADDED

# # # # # Make the change persistent # # # # #

# Get the current path for PSModulePath
$currentpath = [System.Environment]::GetEnvironmentVariable('PSModulePath', 'Machine')

$currentpath -split ";"
# Output:
# C:\Program Files\WindowsPowerShell\Modules
# C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules

##### RUN THIS AS ADMIN (ELEVATED) #####
$newpath = $currentpath + ";Q:\PowerShell\HMUtils"
[System.Environment]::SetEnvironmentVariable('PSModulePath', $newpath, "Machine")
##### /RUN THIS AS ADMIN (ELEVATED) #####


# Restart PowerShell and see if the newly added PSModulePath is still there
$currentpath = [System.Environment]::GetEnvironmentVariable('PSModulePath', 'Machine')

$currentpath -split ";"


# # # # # Let's see what modules are installed in this session # # # # #
Get-Module
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSReadLineKeyHandler…}

# # # # # List all modules available in this session # # # # #
Get-Module -ListAvailable
#     Directory: C:\users\<username>\Documents\PowerShell\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Binary     0.7.7                 Microsoft.PowerShell.ConsoleGuiToo… Core      {Out-ConsoleGridView, Show-ObjectTree, ocgv, shot}
# Script     1.12.0                PSReleaseTools                      Core,Desk {Get-PSReleaseSummary, Get-PSReleaseAsset, Save-PSReleaseAsset, Get-PSReleaseCurrent…}
# Script     4.3.0                 PSTeachingTools                     Core,Desk {Get-Vegetable, New-Vegetable, Set-Vegetable, Remove-Vegetable…}
# Script     4.2.0                 PSTeachingTools                     Core,Desk {Get-Vegetable, New-Vegetable, Set-Vegetable, Remove-Vegetable…}

#     Directory: C:\program files\powershell\7\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   7.0.0.0               CimCmdlets                          Core      {Get-CimAssociatedInstance, Get-CimClass, Get-CimInstance, Get-CimSession…}
# Manifest   1.2.5                 Microsoft.PowerShell.Archive        Desk      {Compress-Archive, Expand-Archive}
# Manifest   7.0.0.0               Microsoft.PowerShell.Diagnostics    Core      {Get-WinEvent, New-WinEvent, Get-Counter}
# Manifest   7.0.0.0               Microsoft.PowerShell.Host           Core      {Start-Transcript, Stop-Transcript}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     Core      {Add-Content, Clear-Content, Get-Clipboard, Set-Clipboard…}
# Binary     1.0.4.1               Microsoft.PowerShell.PSResourceGet  Core,Desk {Find-PSResource, Get-InstalledPSResource, Get-PSResourceRepository, Get-PSScriptFileInfo…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       Core      {Get-Acl, Set-Acl, Get-PfxCertificate, Get-Credential…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        Core      {Export-Alias, Get-Alias, Import-Alias, New-Alias…}
# Manifest   7.0.0.0               Microsoft.WSMan.Management          Core      {Disable-WSManCredSSP, Enable-WSManCredSSP, Get-WSManCredSSP, Set-WSManQuickConfig…}
# Script     1.4.8.1               PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvider, Get-PackageSource…}
# Script     2.2.5                 PowerShellGet                       Desk      {Find-Command, Find-DSCResource, Find-Module, Find-RoleCapability…}
# Script     7.0.0.0               PSDiagnostics                       Core      {Disable-PSTrace, Disable-PSWSManCombinedTrace, Disable-WSManTrace, Enable-PSTrace…}
# Script     2.3.5                 PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKeyHandler, Remove-PSReadLineKeyHandler, Get-PSReadLineOption…}
# Binary     2.0.3                 ThreadJob                           Desk      Start-ThreadJob

#     Directory: C:\Program Files\WindowsPowerShell\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Script     1.0.1                 Microsoft.PowerShell.Operation.Val… Desk      {Get-OperationValidation, Invoke-OperationValidation}
# Binary     1.0.0.1               PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvider, Get-PackageSource…}
# Script     3.4.0                 Pester                              Desk      {Describe, Context, It, Should…}
# Script     1.0.0.1               PowerShellGet                       Desk      {Install-Module, Find-Module, Save-Module, Update-Module…}
# Script     2.0.0      beta2      PSReadline                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKeyHandler, Remove-PSReadLineKeyHandler, Get-PSReadLineOption…}
# Script     4.2.0                 PSTeachingTools                     Core,Desk {Get-Vegetable, New-Vegetable, Set-Vegetable, Remove-Vegetable…}

#     Directory: C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   1.0.0.0               AppBackgroundTask                   Core,Desk {Disable-AppBackgroundTaskDiagnosticLog, Enable-AppBackgroundTaskDiagnosticLog, Set-AppBackgroundTaskResourcePolicy, Unregister-A… 
# Manifest   2.0.1.0               Appx                                Core,Desk {Add-AppxPackage, Get-AppxPackage, Get-AppxPackageManifest, Remove-AppxPackage…}
# Script     1.0.0.0               AssignedAccess                      Core,Desk {Clear-AssignedAccess, Get-AssignedAccess, Set-AssignedAccess}
# Manifest   1.0.0.0               BitLocker                           Core,Desk {Unlock-BitLocker, Suspend-BitLocker, Resume-BitLocker, Remove-BitLockerKeyProtector…}
# Manifest   2.0.0.0               BitsTransfer                        Core,Desk {Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer…}
# Manifest   1.0.0.0               BranchCache                         Core,Desk {Add-BCDataCacheExtension, Clear-BCCache, Disable-BC, Disable-BCDowngrading…}
# Manifest   1.0                   ConfigDefenderPerformance           Core,Desk {New-MpPerformanceRecording, Get-MpPerformanceReport}
# Manifest   1.0                   Defender                            Core,Desk {Get-MpPreference, Set-MpPreference, Add-MpPreference, Remove-MpPreference…}
# Manifest   1.0.2.0               DeliveryOptimization                Core,Desk {Delete-DeliveryOptimizationCache, Set-DeliveryOptimizationStatus, Get-DeliveryOptimizationLog, Get-DeliveryOptimizationLogAnalys… 
# Manifest   1.0.0.0               DirectAccessClientComponents        Core,Desk {Disable-DAManualEntryPointSelection, Enable-DAManualEntryPointSelection, Get-DAClientExperienceConfiguration, Get-DAEntryPointTa… 
# Script     3.0                   Dism                                Core,Desk {Add-AppxProvisionedPackage, Add-WindowsDriver, Add-WindowsCapability, Add-WindowsImage…}
# Manifest   1.0.0.0               DnsClient                           Core,Desk {Resolve-DnsName, Clear-DnsClientCache, Get-DnsClient, Get-DnsClientCache…}
# .........
# Manifest   1.0.0.0               WindowsDeveloperLicense             Core,Desk {Get-WindowsDeveloperLicense, Unregister-WindowsDeveloperLicense, Show-WindowsDeveloperLicenseRegistration}
# Script     1.0                   WindowsErrorReporting               Core,Desk {Enable-WindowsErrorReporting, Disable-WindowsErrorReporting, Get-WindowsErrorReporting}
# Manifest   1.0.0.0               WindowsSearch                       Core,Desk {Get-WindowsSearchSetting, Set-WindowsSearchSetting}
# Manifest   1.0.0.0               WindowsUpdate                       Core,Desk Get-WindowsUpdateLog

#     Directory: C:\Users\<username>\.vscode\extensions\ms-vscode.powershell-2024.2.2\modules

# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Binary     3.20.1                PowerShellEditorServices            Core,Desk Start-EditorServices
# Script     2.4.0      beta0      PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKeyHandler, Remove-PSReadLineKeyHandler, Get-PSReadLineOption…}
# Script     1.22.0                PSScriptAnalyzer                    Desk      {Get-ScriptAnalyzerRule, Invoke-ScriptAnalyzer, Invoke-Formatter}

