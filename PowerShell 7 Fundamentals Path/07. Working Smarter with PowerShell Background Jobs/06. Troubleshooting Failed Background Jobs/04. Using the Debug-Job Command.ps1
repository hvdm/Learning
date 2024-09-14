# Create a job using "Wait-Debugger"
$scriptBlock = 
{
    $var = 10;
    Wait-Debugger;
    $var;
    $var + 1;
}

# Start Running Job
$job = Start-Job -ScriptBlock $scriptBlock
# Output:
# 10
# 11

# $job
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 147    Job147          BackgroundJob   Completed     True            localhost            …



# Wait a few seconds for the job
Start-Sleep -Seconds 2



# Debug the Running Job
Debug-Job -Job $job
# Output:
# Debug-Job: Cannot bind parameter 'Job'. Cannot convert the "" value of type "System.String" to type "System.Management.Automation.Job".

