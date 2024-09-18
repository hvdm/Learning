# Wait for all jobs
Get-Job | Wait-Job

# Wait for several jobs to finish
Wait-Job -Id  91, 101 -Any

# Waiting for "Invoke-Command" jobs
$session = New-PSSession -ComputerName "Server"
$job = Invoke-Command -Session $session -ScriptBlock { Get-Process } -AsJob
$job | Wait-Job