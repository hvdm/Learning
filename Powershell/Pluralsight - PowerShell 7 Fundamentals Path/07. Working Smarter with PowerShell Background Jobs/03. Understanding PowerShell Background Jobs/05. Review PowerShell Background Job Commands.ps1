$PSVersionTable                                 #
# Output:   
# Name                           Value
# ----                           -----
# PSVersion                      7.4.5
# PSEdition                      Core
# GitCommitId                    7.4.5
# OS                             Microsoft Windows 10.0.19045
# Platform                       Win32NT
# PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
# PSRemotingProtocolVersion      2.3
# SerializationVersion           1.1.0.1
# WSManStackVersion              3.0

$PSVersionTable.PSVersion | Format-Table        #
# Output:
# Major  Minor  Patch  PreReleaseLabel BuildLabel
# -----  -----  -----  --------------- ----------
# 7      4      5

Get-Command *job*                               # Get a list of all Cmdlets & Functions are available
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Function        Get-PrintJob                                       1.1        PrintManagement
# Function        Get-RDVirtualDesktopCollectionJobStatus            2.0.0.0    RemoteDesktop
# Function        Get-StorageJob                                     2.0.0.0    Storage
# Function        Remove-PrintJob                                    1.1        PrintManagement
# Function        Restart-PrintJob                                   1.1        PrintManagement
# Function        Resume-PrintJob                                    1.1        PrintManagement
# Function        Stop-RDVirtualDesktopCollectionJob                 2.0.0.0    RemoteDesktop
# Function        Stop-StorageJob                                    2.0.0.0    Storage
# Function        Suspend-PrintJob                                   1.1        PrintManagement
# Cmdlet          Add-JobTrigger                                     1.1.0.0    PSScheduledJob
# Cmdlet          Debug-Job                                          7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Disable-JobTrigger                                 1.1.0.0    PSScheduledJob
# Cmdlet          Disable-ScheduledJob                               1.1.0.0    PSScheduledJob
# Cmdlet          Enable-JobTrigger                                  1.1.0.0    PSScheduledJob
# Cmdlet          Enable-ScheduledJob                                1.1.0.0    PSScheduledJob
# Cmdlet          Get-Job                                            7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Get-JobTrigger                                     1.1.0.0    PSScheduledJob
# Cmdlet          Get-ScheduledJob                                   1.1.0.0    PSScheduledJob
# Cmdlet          Get-ScheduledJobOption                             1.1.0.0    PSScheduledJob
# Cmdlet          New-JobTrigger                                     1.1.0.0    PSScheduledJob
# Cmdlet          New-ScheduledJobOption                             1.1.0.0    PSScheduledJob
# Cmdlet          Receive-Job                                        7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Register-ScheduledJob                              1.1.0.0    PSScheduledJob
# Cmdlet          Remove-Job                                         7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Remove-JobTrigger                                  1.1.0.0    PSScheduledJob
# Cmdlet          Set-JobTrigger                                     1.1.0.0    PSScheduledJob
# Cmdlet          Set-ScheduledJob                                   1.1.0.0    PSScheduledJob
# Cmdlet          Set-ScheduledJobOption                             1.1.0.0    PSScheduledJob
# Cmdlet          Start-Job                                          7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Start-ThreadJob                                    2.0.3      ThreadJob
# Cmdlet          Stop-Job                                           7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Unregister-ScheduledJob                            1.1.0.0    PSScheduledJob
# Cmdlet          Wait-Job                                           7.4.5.500  Microsoft.PowerShell.Core

Start-Job -ScriptBlock { Get-Process } #| Format-Table # Run the Get-Process as a background job
# Output
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            -------------   -----         -----------     --------             -------
# 5      Job5            BackgroundJob   Running       True            localhost             Get-Process

Start-Job -ScriptBlock { Get-Process } `
    -Name "TestJob" |                           # Run the Get-Process as a background job
Format-Table                                    # Format it
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            -------------   -----         -----------     --------             -------
# 21     TestJob         BackgroundJob   Running       True            localhost             Get-Process 

Get-Job
#Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            -------------   -----         -----------     --------             -------
# 1      Job1            BackgroundJob   Completed     True            localhost             Get-Process
# 3      Job3            BackgroundJob   Completed     True            localhost             Get-Process
# 5      Job5            BackgroundJob   Completed     True            localhost             Get-Process
# 7      TestJob         BackgroundJob   Completed     True            localhost             Get-Process
# 9      Job9            BackgroundJob   Completed     True            localhost             Get-Process
# 11     Job11           BackgroundJob   Running       True            localhost             Get-Process
# 13     TestJob         BackgroundJob   Running       True            localhost             Get-Process
# 15     Job15           BackgroundJob   Running       True            localhost             Get-Process
# 17     Job17           BackgroundJob   Running       True            localhost             Get-Process
# 19     Job19           BackgroundJob   Running       True            localhost             Get-Process
# 21     TestJob         BackgroundJob   Running       True            localhost             Get-Process
# 23     Job23           BackgroundJob   Running       True            localhost             Get-Process
# 25     TestJob         BackgroundJob   Running       True            localhost             Get-Process

Get-Job |                                       # Get a list of jobs
Stop-job                                        # Stop the job

Get-Job |                                       # Get a list of jobs
Remove-Job                                      # Remove the job

$a = Start-Job -ScriptBlock { Get-Process -Name svchost }     #| Format-Table # Run the Get-Process as a background job

Write-Host 
Write-Host "Job returned ID: $($a.id)"


Get-Job                                         # Get a list of jobs

Receive-Job -id $a.id                           # Get the result of the job
# Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    ---- - ---- - ------      --  -- ---------- -
# 49    21, 61      17, 63       0, 00     476   0 svchost
# 48   191, 79     200, 45       0, 00     792   0 svchost
# 13     3, 71      10, 66       0, 00    1072   0 svchost

