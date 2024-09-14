# Retrieve the PowerShell version table
$PSVersionTable.PSVersion
# Output:
# Major  Minor  Patch  PreReleaseLabel BuildLabel
# -----  -----  -----  --------------- ----------
# 7      4      5

# Start a PowerShell job using PS 5.1
Start-Job -ScriptBlock `
    { $PSVersionTable.PSVersion } `
    -PSVersion 5.1 | 
Format-Table    

# Start a PowerShell job using PS 7
Start-Job -ScriptBlock `
    { $PSVersionTable.PSVersion } | 
Format-Table    
