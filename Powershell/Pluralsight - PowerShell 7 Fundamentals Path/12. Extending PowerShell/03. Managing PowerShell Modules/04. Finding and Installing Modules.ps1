# Run Find-Module to get a list of modules that are available
Find-Module
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 2.2.1.5              PSWindowsUpdate                     PSGallery            This module contain cmdlets to manage Windows Update Client.
# 1.0.18               SpeculationControl                  PSGallery            This module provides the ability to query the speculation control settings forΓÇª
# 2.8.0                DellBIOSProvider                    PSGallery            The 'Dell Command | PowerShell Provider' provides native configuration capabilΓÇª
# 1.4.8.1              PackageManagement                   PSGallery            PackageManagement (a.k.a. OneGet) is a new way to discover and install softwarΓÇª
# 3.0.4                Az.Accounts                         PSGallery            Microsoft Azure PowerShell - Accounts credential management cmdlets for Azure ΓÇª
# .......


# Use Find-Module but filter it. Slack is a populair Communication Tool
Find-Module -name *slack*
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 1.0.6                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.4.5                Slack                               PSGallery            This module helps integrate PowerShell scripts with Slack.


# You can also use tags
Find-Module -Tag slack
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 1.0.6                PSSlack                             PSGallery            PowerShell module for the Slack API
# 4.8.5                Logging                             PSGallery            Powershell Logging Module
# 0.1.38               TD.Util                             PSGallery            Tedon Utilities module
# 0.8.7                PSBlackListChecker                  PSGallery            This module allows you to easily check if your defined list of IPs are on any… 
# 0.4.5                Slack                               PSGallery            This module helps integrate PowerShell scripts with Slack.
# 1.1                  SlackDSCResource                    PSGallery            PowerShell DSC Provider that sends messages to a slack channel
# 1.0.7                PSSlack.BDA                         PSGallery            PowerShell module for the Slack API
# 1.0.62               SlackBot                            PSGallery            Powershell based Slack Bot using the Real Time Messaging API and WebSockets.   
# 4.2                  write-slack                         PSGallery            Writes to slack channel
# 0.0.5                ps.slack                            PSGallery            Powershell Slack API
# 23.0.8839.1          SlackCmdlets                        PSGallery            CData Cmdlets for Slack
# 0.1.0                PSlickPSlack                        PSGallery            This module helps integrate PowerShell scripts with Slack.
# 17.8.1               SlackBuildHelper                    PSGallery            PSSlack helper module for build tools such as Invoke-Build and psake.
# 1.1                  Kelverion.Slack                     PSGallery            This Integration Module provides cmdlets for automating interaction with Slac…


# Find the modules but using the version histry
Find-Module -name psslack -AllVersions
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 1.0.6                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.5                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.4                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.3                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.2                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.1                PSSlack                             PSGallery            PowerShell module for the Slack API
# 1.0.0                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.1.3                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.1.2                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.1.1                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.1.0                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.38               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.37               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.36               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.35               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.34               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.33               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.32               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.31               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.30               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.29               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.28               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.27               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.26               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.25               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.24               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.23               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.22               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.21               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.20               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.19               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.18               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.17               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.16               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.15               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.14               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.13               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.12               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.11               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.10               PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.9                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.8                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.7                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.6                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.4                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.3                PSSlack                             PSGallery            PowerShell module for the Slack API
# 0.0.2                PSSlack                             PSGallery            PowerShell module for the Slack Webhook API
# 0.0.1                PSSlack                             PSGallery            PowerShell module for the Slack Webhook API


# Using the Maxversion to show
Find-Module -Name PSSlack -MaximumVersion 1.0
# It wont show versions above 1.0, allthough they do exist
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 1.0.0                PSSlack                             PSGallery            PowerShell module for the Slack API


# Using the Required version to search for a specific version
Find-Module -Name PSSlack -RequiredVersion 1.0.2
# Output:
# Version              Name                                Repository           Description
# -------              ----                                ----------           -----------
# 1.0.2                PSSlack                             PSGallery            PowerShell module for the Slack API



# Search for a specfic command
Find-Command -ModuleName PSSlack
# Output:
# Name                                Version    ModuleName                          Repository
# ----                                ------ - ----------                          ----------
# Find-SlackMessage                   1.0.6      PSSlack                             PSGallery
# Get-PSSlackConfig                   1.0.6      PSSlack                             PSGallery
# Get-SlackAuth                       1.0.6      PSSlack                             PSGallery
# Get-SlackChannel                    1.0.6      PSSlack                             PSGallery
# Get-SlackFileInfo                   1.0.6      PSSlack                             PSGallery
# Get-SlackGroup                      1.0.6      PSSlack                             PSGallery
# Get-SlackGroupHistory               1.0.6      PSSlack                             PSGallery
# Get-SlackHistory                    1.0.6      PSSlack                             PSGallery
# Get-SlackReminder                   1.0.6      PSSlack                             PSGallery
# Get-SlackTeam                       1.0.6      PSSlack                             PSGallery
# Get-SlackUser                       1.0.6      PSSlack                             PSGallery
# Get-SlackUserGroup                  1.0.6      PSSlack                             PSGallery
# Get-SlackUserMap                    1.0.6      PSSlack                             PSGallery
# New-SlackAction                     1.0.6      PSSlack                             PSGallery
# New-SlackActionConfirmation         1.0.6      PSSlack                             PSGallery
# New-SlackActionOption               1.0.6      PSSlack                             PSGallery
# New-SlackField                      1.0.6      PSSlack                             PSGallery
# New-SlackMessage                    1.0.6      PSSlack                             PSGallery
# New-SlackMessageAttachment          1.0.6      PSSlack                             PSGallery
# New-SlackReminder                   1.0.6      PSSlack                             PSGallery
# Remove-SlackFile                    1.0.6      PSSlack                             PSGallery
# Remove-SlackMessage                 1.0.6      PSSlack                             PSGallery
# Remove-SlackReminder                1.0.6      PSSlack                             PSGallery
# Send-SlackApi                       1.0.6      PSSlack                             PSGallery
# Send-SlackFile                      1.0.6      PSSlack                             PSGallery
# Send-SlackMessage                   1.0.6      PSSlack                             PSGallery
# Set-PSSlackConfig                   1.0.6      PSSlack                             PSGallery
# Set-SlackReminderComplete           1.0.6      PSSlack                             PSGallery
# Test-SlackApi                       1.0.6      PSSlack                             PSGallery
# Test-SlackAuth                      1.0.6      PSSlack                             PSGallery


# Find a module by the cmdlet name
Find-Command -Name Get-VM
# Output:
# Name                                Version    ModuleName                          Repository
# ----                                -------    ----------                          ----------
# Get-VM                              13.3.0.24… VMware.VimAutomation.Core           PSGallery
# Get-VM                              2.1.0      Nutanix.Prism.PS.Cmds               PSGallery
# Get-Vm                              1.0.0      PoshLibVirt                         PSGallery
# Get-VM                              1.1        VCommanderRestClient                PSGallery
# Get-Vm                              0.3.3.30   TSR.Nutanix.V3.PowerShell           PSGallery


# Let's install the module PSSlack
Install-Module -Name PSSlack 
#Output:  [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"):         y


# See whats installed
Get-Module PSSlack -ListAvailable | Format-List 
# Output:
# Name              : PSSlack
# Path              : c:\users\<username>\Documents\PowerShell\Modules\PSSlack\1.0.6\PSSlack.psd1
# Description       : PowerShell module for the Slack API
# ModuleType        : Script
# Version           : 1.0.6
# PreRelease        : 
# NestedModules     : {}
# ExportedFunctions : { Find-SlackMessage, Get-PSSlackConfig, Get-SlackAuth, Get-SlackChannel… }
# ExportedCmdlets   : 
# ExportedVariables : _PSSlackColorMap
# ExportedAliases   : 


# Show a list of commands for the module
Get-Command -Module PSSlack
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Function        Find-SlackMessage                                  1.0.6      PSSlack
# Function        Get-PSSlackConfig                                  1.0.6      PSSlack
# Function        Get-SlackAuth                                      1.0.6      PSSlack
# Function        Get-SlackChannel                                   1.0.6      PSSlack
# Function        Get-SlackFileInfo                                  1.0.6      PSSlack
# Function        Get-SlackGroup                                     1.0.6      PSSlack
# Function        Get-SlackGroupHistory                              1.0.6      PSSlack
# Function        Get-SlackHistory                                   1.0.6      PSSlack
# Function        Get-SlackReminder                                  1.0.6      PSSlack
# Function        Get-SlackTeam                                      1.0.6      PSSlack
# Function        Get-SlackUser                                      1.0.6      PSSlack
# Function        Get-SlackUserGroup                                 1.0.6      PSSlack
# Function        Get-SlackUserMap                                   1.0.6      PSSlack
# Function        New-SlackAction                                    1.0.6      PSSlack
# Function        New-SlackActionConfirmation                        1.0.6      PSSlack
# Function        New-SlackActionOption                              1.0.6      PSSlack
# Function        New-SlackField                                     1.0.6      PSSlack
# Function        New-SlackMessage                                   1.0.6      PSSlack
# Function        New-SlackMessageAttachment                         1.0.6      PSSlack
# Function        New-SlackReminder                                  1.0.6      PSSlack
# Function        Remove-SlackFile                                   1.0.6      PSSlack
# Function        Remove-SlackMessage                                1.0.6      PSSlack
# Function        Remove-SlackReminder                               1.0.6      PSSlack
# Function        Send-SlackApi                                      1.0.6      PSSlack
# Function        Send-SlackFile                                     1.0.6      PSSlack
# Function        Send-SlackMessage                                  1.0.6      PSSlack
# Function        Set-PSSlackConfig                                  1.0.6      PSSlack
# Function        Set-SlackReminderComplete                          1.0.6      PSSlack
# Function        Test-SlackApi                                      1.0.6      PSSlack
# Function        Test-SlackAuth                                     1.0.6      PSSlack