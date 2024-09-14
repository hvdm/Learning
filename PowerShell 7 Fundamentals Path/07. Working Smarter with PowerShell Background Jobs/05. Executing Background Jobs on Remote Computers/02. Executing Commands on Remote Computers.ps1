# List all commands that can be used for Remoting
Get-Command | Where-Object { $_.Parameters.Keys -contains "ComputerName" }
# The output shows all command where you can pass the computername
# Output:
# CommandType     Name                                               Version    Source
# ---------- - ----                                               ------ - ------
# Cmdlet          Connect-PSSession                                  7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Enter-PSSession                                    7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Get-HotFix                                         7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Get-PSSession                                      7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Invoke-Command                                     7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          New-PSSession                                      7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Receive-Job                                        7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Receive-PSSession                                  7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Remove-PSSession                                   7.4.5.500  Microsoft.PowerShell.Core
# Cmdlet          Rename-Computer                                    7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Restart-Computer                                   7.0.0.0    Microsoft.PowerShell.Management
# Cmdlet          Stop-Computer                                      7.0.0.0    Microsoft.PowerShell.Management

# Creating a Remote Interactive PowerShell Session
Enter-PSSession "ComputerName"

# Exit a Remote Interactive PowerShell Session
Exit-PSSession

# Creating a Persistant Non-Interactive PowerShell Session
$sessions = New-PSSession -ComputerName "Computer1", "Computer2"

# Execute Commands within Persistent Non-Interactive PowerShell Sessions
Invoke-Command -Session $sessions -ScriptBlock `
{ $processes = Get-Process
    $processes 
}





