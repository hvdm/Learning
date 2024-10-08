# Get a list of all commands for handling Packages
Get-Command -Module PackageManagement
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Find-Package                                       1.4.8.1    PackageManagement
# Cmdlet          Find-PackageProvider                               1.4.8.1    PackageManagement
# Cmdlet          Get-Package                                        1.4.8.1    PackageManagement
# Cmdlet          Get-PackageProvider                                1.4.8.1    PackageManagement
# Cmdlet          Get-PackageSource                                  1.4.8.1    PackageManagement
# Cmdlet          Import-PackageProvider                             1.4.8.1    PackageManagement
# Cmdlet          Install-Package                                    1.4.8.1    PackageManagement
# Cmdlet          Install-PackageProvider                            1.4.8.1    PackageManagement
# Cmdlet          Register-PackageSource                             1.4.8.1    PackageManagement
# Cmdlet          Save-Package                                       1.4.8.1    PackageManagement
# Cmdlet          Set-PackageSource                                  1.4.8.1    PackageManagement
# Cmdlet          Uninstall-Package                                  1.4.8.1    PackageManagement
# Cmdlet          Unregister-PackageSource                           1.4.8.1    PackageManagement


# Get a list of providers
Get-PackageProvider
# Output:
# Name                     Version          DynamicOptions
# ----                     -------          --------------
# NuGet                    3.0.0.1          Destination, ExcludeVersion, Scope, SkipDependencies, Headers, FilterOnTag, Contains, AllowPrereleaseVersions, Co… 
# PowerShellGet            2.2.5.0          PackageManagementProvider, Type, Scope, AllowClobber, SkipPublisherCheck, InstallUpdate, NoPathUpdate, AllowPrere…

# In Windows Powershell you do see more providers then in Powershell 7.

# Get a list of commands in PowerShellGet
Get-Command -Module PowerShellGet
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Function        Find-Command                                       2.2.5      PowerShellGet
# Function        Find-DscResource                                   2.2.5      PowerShellGet
# Function        Find-Module                                        2.2.5      PowerShellGet
# Function        Find-RoleCapability                                2.2.5      PowerShellGet
# Function        Find-Script                                        2.2.5      PowerShellGet
# Function        Get-CredsFromCredentialProvider                    2.2.5      PowerShellGet
# Function        Get-InstalledModule                                2.2.5      PowerShellGet
# Function        Get-InstalledScript                                2.2.5      PowerShellGet
# Function        Get-PSRepository                                   2.2.5      PowerShellGet
# Function        Install-Module                                     2.2.5      PowerShellGet
# Function        Install-Script                                     2.2.5      PowerShellGet
# Function        New-ScriptFileInfo                                 2.2.5      PowerShellGet
# Function        Publish-Module                                     2.2.5      PowerShellGet
# Function        Publish-Script                                     2.2.5      PowerShellGet
# Function        Register-PSRepository                              2.2.5      PowerShellGet
# Function        Save-Module                                        2.2.5      PowerShellGet
# Function        Save-Script                                        2.2.5      PowerShellGet
# Function        Set-PSRepository                                   2.2.5      PowerShellGet
# Function        Test-ScriptFileInfo                                2.2.5      PowerShellGet
# Function        Uninstall-Module                                   2.2.5      PowerShellGet
# Function        Uninstall-Script                                   2.2.5      PowerShellGet
# Function        Unregister-PSRepository                            2.2.5      PowerShellGet
# Function        Update-Module                                      2.2.5      PowerShellGet
# Function        Update-ModuleManifest                              2.2.5      PowerShellGet
# Function        Update-Script                                      2.2.5      PowerShellGet
# Function        Update-ScriptFileInfo                              2.2.5      PowerShellGet

# get a list of registered repositories on this machine
Get-PSRepository
# Output:
# Name                      InstallationPolicy   SourceLocation
# ----                      ------------------   --------------
# PSGallery                 Untrusted            https://www.powershellgallery.com/api/v2


# # # # # Create a new FileShare Repository # # # # #
# Create a folder
New-Item -Path D:\LocalPSRepo -ItemType Directory
# Share it
New-SmbShare -Path D:\LocalPSRepo -Name LocalPSRepo
# Output:
# Name        ScopeName Path           Description
# ----        --------- ----           -----------
# LocalPSRepo *         D:\LocalPSRepo

# Register the share in this session
Register-PSRepository -Name LocalPSRepo -SourceLocation \\localhost\LocalPSRepo -ScriptSourceLocation \\localhost\LocalPSRepo -InstallationPolicy Trusted

Get-PSRepository
# Output:
# Name                      InstallationPolicy   SourceLocation
# ----                      ------------------   --------------
# PSGallery                 Untrusted            https://www.powershellgallery.com/api/v2
# LocalPSRepo               Trusted              \\localhost\LocalPSRepo

# You can change a repository from untrusted to trusted
# 
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
# Output:
# Name                      InstallationPolicy   SourceLocation
# ----                      ------------------   --------------
# PSGallery                 Trusted              https://www.powershellgallery.com/api/v2
