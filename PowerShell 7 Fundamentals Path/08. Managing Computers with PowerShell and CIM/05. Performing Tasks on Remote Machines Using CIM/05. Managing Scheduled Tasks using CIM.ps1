# Initiate a job Locally
Start-Job -ScriptBlock { Get-CimInstance -ClassName Win32_ComputerSystem }
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            -------------   -----         -----------     --------             -------
# 1      Job1            BackgroundJob   Running       True            localhost             Get-CimInstance -Clas...



# Retrieve CIM Processes Class, using a query for "Notepad", then use "Terminate" method
$process = Get-CimInstance `
    -Query 'Select * from Win32_Process WHERE Name LIKE "Notepad%"'
$process

# Initiate a Job and Return the Results
$job = Start-Job -ScriptBlock { Get-CimInstance -Query 'Select * from Win32_Process WHERE Name LIKE "Notepad%"' }
# Wait a few seconds for the job to complete
Start-Sleep -Seconds 2
Receive-Job -id $job.Id


# Initiate a job remotely
$computer = "localhost"
$Script = { 
    $session = New-CimSession -ComputerName $computer
    Get-CimInstance -ClassName Win32_ComputerSystem -CimSession $session
}
$job = Start-Job -ScriptBlock $Script
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            -------------   -----         -----------     --------             -------
# 17     Job17           BackgroundJob   Completed     True            localhost             ...

