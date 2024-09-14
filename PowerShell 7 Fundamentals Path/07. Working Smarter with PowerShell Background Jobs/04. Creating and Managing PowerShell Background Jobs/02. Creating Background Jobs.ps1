Start-Job -ScriptBlock { Get-Process -Name Code }       # Create a background job with Start-Job
# Output
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 97     Job97           BackgroundJob   Running       True            localhost             Get-Process -Name Code

Get-Process -Name Code &                                # Create a background job with the "&" operator
# Output
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 99     Job99           BackgroundJob   Running       True            localhost            Get-Process -Name Code

$job = Invoke-Command `
    -ComputerName `
( Get-Content -Path "$PSScriptRoot\servers.txt") `
    -ScriptBlock { Get-Service WinRM } `
    -JobName WinRM `
    -ThrottleLimit 16 `
    -AsJob

$job
# Output
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 105    WinRM           RemoteJob       Failed        False           localhost             Get-Service WinRM


