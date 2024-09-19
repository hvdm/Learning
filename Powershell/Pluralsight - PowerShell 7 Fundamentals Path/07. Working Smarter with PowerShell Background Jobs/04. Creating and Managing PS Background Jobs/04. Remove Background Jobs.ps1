# Create a job
Start-Job -ScriptBlock { Get-Process WinRM } -Name BatchJob

# Wait a few seconds for the job to complete
Start-Sleep -Seconds 2

### Remove job by Name ###
$job = Get-Job -Name BatchJob
$job | Remove-Job
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 113    BatchJob        BackgroundJob   Running       True            localhost             Get-Process WinRM

### Remove job by ID ###
$job = Start-Job -ScriptBlock { Get-Process spoolsv }
$job | Format-List -Property *
# Output:
# State         : Completed
# HasMoreData   : True
# StatusMessage : 
# Get-Location      : localhost
# Get-Command       :  Get-Process spoolsv
# JobStateInfo  : Completed
# Finished      : System.Threading.ManualResetEvent
# InstanceId    : 9a6d6910-6ff7-4eea-8114-330d7cfe9e8b

# Wait a few seconds for the job to complete
Start-Sleep -Seconds 2

Remove-Job -InstanceId 9a6d6910-6ff7-4eea-8114-330d7cfe9e8b

### Remove by the Invoke-Command ###
$session = New-PSSession -ComputerName "Server"

Invoke-Command -Session $session -ScriptBlock { start-job `
        -ScriptBlock { Get-Process } -Name "Job" }

Invoke-Command -Session $session `
    -ScriptBlock { Remove-Job -Name "job" }

