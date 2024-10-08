# Install a module, but make sure it's mot the lates
Install-Module -name posh-ssh -RequiredVersion 2.0
# Output:
# Untrusted repository
# You are installing the modules from an untrusted repository. If you trust this repository, change its InstallationPolicy value by running the 
# Set-PSRepository cmdlet. Are you sure you want to install the modules from 'PSGallery'?
# [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): y


# See if it is installed
Get-Module -name posh-ssh -ListAvailable
# Output:
# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   2.0                   Posh-SSH                            Desk      {Get-SSHSession, Remove-SSHSession, Invoke-SSHCommand, Get-PoshSSHModVersion… 


# Running Update-Module without parameters, it will update ALL installed modules

# Update it to a specific version
Update-Module -name posh-ssh -RequiredVersion 2.1
# Output:
# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   2.1                   Posh-SSH                            Desk      {Get-SCPFile, Get-SCPFolder, Get-SCPItem, Get-SFTPFile…}
# Manifest   2.0                   Posh-SSH                            Desk      {Get-PoshSSHModVersion, Get-SFTPPathAttribute, Invoke-SSHCommand, Get-SFTPSe… 

# Updating a module does NOT remove the older version


# Update it to the latest version
Update-Module -name posh-ssh
# Output:
# ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
# ---------- -------    ---------- ----                                --------- ----------------
# Manifest   3.2.4                 Posh-SSH                            Desk      {Get-SCPItem, Get-SFTPItem, New-SFTPSession, New-SSHSession…}
# Manifest   2.1                   Posh-SSH                            Desk      {Get-SCPFile, Get-SCPFolder, Get-SCPItem, Get-SFTPFile…}
# Manifest   2.0                   Posh-SSH                            Desk      {Get-PoshSSHModVersion, Get-SFTPPathAttribute, Invoke-SSHCommand, Get-SFTPSe… 


# Now import the module for usage
Import-Module posh-ssh -Verbose
# VERBOSE: Loading module from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\posh-ssh.psd1'.
# VERBOSE: Loading 'Assembly' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Assembly\Newtonsoft.Json.dll'.
# VERBOSE: Loading 'Assembly' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Assembly\Renci.SshNet.dll'.
# VERBOSE: Loading 'Assembly' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Assembly\SshNet.Security.Cryptography.dll'.  
# VERBOSE: Loading 'FormatsToProcess' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Format\SSHSession.Format.ps1xml'.    
# VERBOSE: Loading 'FormatsToProcess' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Format\SFTPSession.Format.ps1xml'.   
# VERBOSE: Loading 'FormatsToProcess' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Format\Renci.SshNet.SshCommand.Format.ps1xml'.
# VERBOSE: Loading 'FormatsToProcess' from path 'C:\Users\<username>\Documents\PowerShell\Modules\posh-ssh\3.2.4\Format\Renci.SshNet.Sftp.SftpFile.Format.ps1xml'.

# You can see it imports the latest version 3.2.4


# Get a count of installed modules
(Get-InstalledModule).count
# Output: 5

(Get-Module -ListAvailable).count
# Output: 87
# this means that those are NOT installed with the PackageManagement Framework (Install-Module)
# For example
Update-Module SmbShare
# Update-Module: Module 'SmbShare' was not installed by using Install-Module, so it cannot be updated.


