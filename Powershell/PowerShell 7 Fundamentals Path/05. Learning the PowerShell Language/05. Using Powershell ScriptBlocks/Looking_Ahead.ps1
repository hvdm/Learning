# Start-Job runs a job in the background
Start-Job   {
    param($log, $count)
    Get-WinEvent -FilterHashtable @{
        LogName = $log
        SuppressHashFilter = @{ Level = 4}
    } -MaxEvents $count | 
    Group-Object ProviderName -NoElement | 
    Sort-Object Count -Descending
} -ArgumentList System,1000 -Name LogInfo

# When the job is finished you can retrieve the information
Receive-Job LogInfo -Keep | Format-Table -AutoSize
