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


# # # # # Import the BitsTransfer module # # # # #
Import-Module BitsTransfer
# Output:
# -


# # # # # Let's see what modules are installed in this session # # # # #
Get-Module
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- ------ - ---------- ----                                ----------------
# Manifest   2.0.0.0               BitsTransfer { Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer… }
# Manifest   7.0.0.0               Microsoft.PowerShell.Management { Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty… }
# Manifest   7.0.0.0               Microsoft.PowerShell.Security { ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature… } 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility { Add-Member, Add-Type, Clear-Variable, Compare-Object… }
# Script     0.2.0                 PowerShellEditorServices.Commands { Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast… }
# Script     2.4.0      beta0      PSReadLine { Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 


# # # # # Autoloading modules # # # # #
# In the list above you see whats loaded into the current session
# Let's run Get-SMBshare 
Get-SmbShare
# Run Get-Module again
Get-Module
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   2.0.0.0               BitsTransfer                        {Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…} 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 
# Manifest   2.0.0.0               SmbShare                            {Block-SmbShareAccess, Close-SmbOpenFile, Close-SmbSession, Disable-SmbDelegation…}     
### SmbShare is automaticly loaded as long as the module is in the PSModulePath


# # # # # Let's import a module from the internet # # # # #
# https://github.com/originaluko/haveibeenpwned
# Download the ZIP file from Github
# Extract it in the download folder (just for this example) and rename the haveibeenpwnded-master folder (remove -master)

Import-Module haveibeenpwned
# Output:
# Import-Module: The specified module 'haveibeenpwned' was not loaded because no valid module file was found in any module directory.
# Reason is that the extracted folder is in the Downloads folder which isn't in thr PSModulePath

Import-Module c:\users\<username>\downloads\haveibeenpwned
Get-Module
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   2.0.0.0               BitsTransfer                        {Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer…}
# Binary     7.0.0.0               CimCmdlets                          {Get-CimAssociatedInstance, Get-CimClass, Get-CimInstance, Get-CimSession…}
# Script     3.2                   haveibeenpwned <----------          {Get-PwnedAccount, Get-PwnedBreach, Get-PwnedDataClass, Get-PwnedPassword…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…} 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     3.4.0                 Pester                              {AfterAll, AfterEach, Assert-MockCalled, Assert-VerifiableMocks…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 
# Manifest   2.0.0.0               SmbShare                            {Block-SmbShareAccess, Close-SmbOpenFile, Close-SmbSession, Disable-SmbDelegation…}     


# To avoid issues with the same commands in different modules, use a prefix
Import-Module ScheduledTasks -Prefix ABCD
# Output:
# ModuleType Version    PreRelease Name                                ExportedCommands
# ---------- -------    ---------- ----                                ----------------
# Manifest   2.0.0.0               BitsTransfer                        {Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer…}
# Binary     7.0.0.0               CimCmdlets                          {Get-CimAssociatedInstance, Get-CimClass, Get-CimInstance, Get-CimSession…}
# Script     3.2                   haveibeenpwned                      {Get-PwnedAccount, Get-PwnedBreach, Get-PwnedDataClass, Get-PwnedPassword…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
# Manifest   7.0.0.0               Microsoft.PowerShell.Security       {ConvertFrom-SecureString, ConvertTo-SecureString, Get-Acl, Get-AuthenticodeSignature…} 
# Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
# Script     3.4.0                 Pester                              {AfterAll, AfterEach, Assert-MockCalled, Assert-VerifiableMocks…}
# Script     0.2.0                 PowerShellEditorServices.Commands   {Clear-Host, ConvertFrom-ScriptExtent, ConvertTo-ScriptExtent, Find-Ast…}
# Script     2.4.0      beta0      PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRe… 
# Manifest   1.0.0.0               ScheduledTasks                      {Disable-ABCDScheduledTask, Enable-ABCDScheduledTask, Export-ABCDScheduledTask, Get-AB… 
#                                                                               / \                       / \                       / \
#                                                                                |                         |                         |
#                                                                                |                         |                         |
