# Start a job
Start-Job -ScriptBlock { Get-Process } -Name "Job"
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 129    Get-Job             BackgroundJob   Running       True            localhost             Get-Process


# Get Job Details
$job = Get-Job -Name "Job"
$job
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 129    Get-Job             BackgroundJob   Running       True            localhost             Get-Process


# Get ChildJob Details
Get-Job -IncludeChildJob
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 129    Get-Job             BackgroundJob   Running       True            localhost             Get-Process
# 130    Job130                          Running       True            localhost             Get-Process


# Get Non-Started Jobs
Get-job -State NotStarted
# Output:
# -


# Get Specific Job Results
$job = Start-Job -ScriptBlock { Get-Process }
Receive-Job -Job $job
# Output:
#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      22     5,93      13,24       6,91    6408   1 AdobeCollabSync
#      19     7,72      18,88   4.508,69   14812   1 AdobeCollabSync
#       8     1,75       5,69       3,80    6040   0 agent_ovpnconnect_1706702535874
#       7     3,32       6,43       0,00   11848   0 AggregatorHost
#      15    22,29       8,52      13,20   35988   1 ai
#      11     2,59       5,72       0,00    2864   0 AppHelperCap
# .....


# Get Specific Job Results from multiple computers
$session = New-PSSession -ComputerName DC01, SRV01, SRV02
$job = Invoke-Command -Session $session `
    -ScriptBlock { Start-Job -ScriptBlock { $env:COMPUTERNAME } }
Get-Job
