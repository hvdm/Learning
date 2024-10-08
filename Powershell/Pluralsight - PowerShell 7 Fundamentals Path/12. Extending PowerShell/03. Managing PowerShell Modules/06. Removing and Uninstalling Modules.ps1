# Get a list of modules that are installed in this session
Get-Module
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…} 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     1.4.8.1               PackageManagement                   {Find-Package, Find-PackageProvider, Get-Package, Get-PackageProvider…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.2.5                 PowerShellGet                       {Find-Command, Find-DscResource, Find-Module, Find-RoleCapability…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 
# Script     1.0.6                 PSSlack                             {Find-SlackMessage, Get-PSSlackConfig, Get-SlackAuth, Get-SlackChannel…}


# Removing the module is the opposite of import-module, it doesnt remove it from the system
Remove-Module PSSlack
Get-Module
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…} 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     1.4.8.1               PackageManagement                   {Find-Package, Find-PackageProvider, Get-Package, Get-PackageProvider…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.2.5                 PowerShellGet                       {Find-Command, Find-DscResource, Find-Module, Find-RoleCapability…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 


# Where is posh-ssh, it doesnt show in the abouve output.
# This is because it wasn't imported
Get-Module -Name posh-ssh -ListAvailable
# Output:
# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   3.2.4                 Posh-SSH                            Desk      {Get-SCPItem, Get-SFTPItem, New-SFTPSession, New-SSHSession…}
# Manifest   2.1                   Posh-SSH                            Desk      {Get-SCPFile, Get-SCPFolder, Get-SCPItem, Get-SFTPFile…}
# Manifest   2.0                   Posh-SSH                            Desk      {Get-PoshSSHModVersion, Get-SFTPPathAttribute, Invoke-SSHCommand, Get-SFTPSe… 


# Uninstall posh-ssh
Uninstall-Module -name posh-ssh
Get-Module -Name posh-ssh -ListAvailable
# Output:
# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   2.1                   Posh-SSH                            Desk      {Get-SCPFile, Get-SCPFolder, Get-SCPItem, Get-SFTPFile…}
# Manifest   2.0                   Posh-SSH                            Desk      {Get-PoshSSHModVersion, Get-SFTPPathAttribute, Invoke-SSHCommand, Get-SFTPSe… 

# It only uninstalled the latest version


# Uninstall posh-ssh for all versions
Uninstall-Module -name posh-ssh -AllVersions
Get-Module -Name posh-ssh -ListAvailable
