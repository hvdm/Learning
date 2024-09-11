#### Create a session using invoke-command ####

# Execute a command on a remote computer
Invoke-Command -ComputerName "SRV1" -ScriptBlock { Get-ComputerInfo }

# Execute a script on a remote computer
Invoke-Command -ComputerName "SRV1" -FilePath "C:\scripts\script1.ps1"

# Create a persistent connection and execute the command
$ps = New-PSSession -ComputerName "SRV1"
Invoke-Command -Session $ps { Get-ComputerInfo }


#### Using interactive sessions with Enter-PSSession or New-PSSession ####
# Enter-PSSession connects to a Powershell Session on the remote computer
Enter-PSSession -ComputerName "SRV1"

# New-PSSession creates a brand new Powershell Session
New-PSSession -ComputerName "SRV1"

# Create a persistent Powershell session on the specified computer
$ps = New-PSSession -ComputerName "SRV1"

# Connect to Powershell Session on the specified computer
Enter-PSSession  -ComputerName "SRV1" -Port 99 -Credential "CONTOSO\<username>"

# Remove the PowerShell session
Remove-PSSession -Session $ps

# Session 1 = DC1   192.168.100.5       $s1 = 192.168.100.5
# Session 2 = FS1   192.168.100.7       $s2 = 192.168.100.7
#             MGT   192.168.100.8

# From MGT:
$s1 = 192.168.100.5
$s2 = 192.168.100.7

Enter-PSSession  -Session $s1 { Get-ComputerInfo }
Enter-PSSession  -Session $s2 { Get-ComputerInfo }

# Create Default Session options
New-PSSessionOption

# Define new options
$options = New-PSSessionOption
$options.OpenTimeout = (New-TimeSpan -Minutes 4)
$options.NoEncryption = $true
$options.UICulture = {Get-UICulture}

# Create a new PowerShell session using the created options
New-PSSession -ComputerName "SRV1" -SessionOption $options




