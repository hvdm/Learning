# Get a list of all jobs
Get-Job                                         
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 91     Job91           BackgroundJob   Completed     True            localhost             Get-Process -Name svcho…
# 93     Job93           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 95     Job95           BackgroundJob   Completed     True            localhost            Get-Process -Name Code
# 97     Job97           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 99     Job99           BackgroundJob   Completed     True            localhost            Get-Process -Name Code
# 101    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 103    Job103          BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 105    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 119    Job119          BackgroundJob   Completed     True            localhost             Get-Process spoolsv
# 123    Job123          BackgroundJob   Completed     True            localhost             Get-Process spoolsv

# Get a job by name
Get-Job -name Job99
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 99     Job99           BackgroundJob   Completed     True            localhost            Get-Process -Name Code

# Get a job by name and place it into an object
$job = Get-Job -name Job99
$job
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 99     Job99           BackgroundJob   Completed     True            localhost            Get-Process -Name Code

# Remove the job
$job | Remove-Job

# Get a list of all jobs
Get-Job                                         
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 91     Job91           BackgroundJob   Completed     True            localhost             Get-Process -Name svcho…
# 93     Job93           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 95     Job95           BackgroundJob   Completed     True            localhost            Get-Process -Name Code
# 97     Job97           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 101    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 103    Job103          BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 105    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 119    Job119          BackgroundJob   Completed     True            localhost             Get-Process spoolsv
# 123    Job123          BackgroundJob   Completed     True            localhost             Get-Process spoolsv

# Get a list of all jobs
$job = Get-Job -id 95
$job
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 95     Job95           BackgroundJob   Completed     True            localhost            Get-Process -Name Code

# get the Properties in a formatted list
$job | Format-List -Property *
# Output:
# State         : Completed
# HasMoreData   : True
# StatusMessage : 
# Get-Location      : localhost
# Get-Command       : Get-Process -Name Code
# JobStateInfo  : Completed
# Finished      : System.Threading.ManualResetEvent
# InstanceId    : c7ef016b-0c72-4ec2-b8d8-4b72d35341d8
# Id            : 95
# Name          : Job95
# ChildJobs     : { Job96 }
# PSBeginTime   : 14-9-2024 11:15:10
# PSEndTime     : 14-9-2024 11:15:12
# PSJobTypeName : BackgroundJob
# Output        : {}
# Get-Error         : {}
# Progress      : {}
# Verbose       : {}
# Debug         : {}
# Warning       : {}
# Information   : {}

# Remove the job by instance ID
Remove-Job -InstanceId c7ef016b-0c72-4ec2-b8d8-4b72d35341d8

#
# Get a list of all jobs
Get-Job                                         
# Output:
# ID 95 with InstanceID c7ef016b-0c72-4ec2-b8d8-4b72d35341d8 is removed
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 91     Job91           BackgroundJob   Completed     True            localhost             Get-Process -Name svcho…
# 93     Job93           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 97     Job97           BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 101    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 103    Job103          BackgroundJob   Completed     True            localhost             Get-Process -Name Code
# 105    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM
# 119    Job119          BackgroundJob   Completed     True            localhost             Get-Process spoolsv
# 123    Job123          BackgroundJob   Completed     True            localhost             Get-Process spoolsv
