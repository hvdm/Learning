# Enable PowerShell Remoting over HTTP
Set-WSManQuickConfig

# Enable PowerShell Remoting over HTTPS
Set-WSManQuickConfig -UseSSL

# Most commonly used:
Enable-PSRemoting -Force

# Depening on how the network is defined in Windows (Public, Private, etc), there might be some issues
Enable-PSRemoting -Force -SkipNetworkProfileCheck


# For multiple machine in a domain it's better to use GPO's
# Open GPMC
# Computer Configuration -> Policies -> Windows Settings -> Security Settings -> Windows Firewall with Advanced Security
# Inbound rule
# 	Windows Remote Management (HTTP-In) 
# 	Inbound rule for Windows Remote Management via WS-Management. [TCP 5985] 
# 	Domain, Public + Private

# Computer Configuration -> Policies -> Windows Settings -> Security Settings -> System Services
# Windows Remote Management (WS-Management) Enable + Automatic

# Computer Configuration -> Policies -> Administrative Settings -> Windows Components/Windows Remote Management (WinRM)/WinRM Service     
# Allow Remote server management through WinRM = Enabled




# Connect through SSH (Windows & Linux)
# Install latest PowerShell
# Install latest OpenSSH
# Define the SSH Configuration
# Restart SSH Service

# On Windows 10
# Install OpenSSH
Add-WindowsCapability -Online -Name OpenSSH.server
Add-WindowsCapability -Online -Name OpenSSH.client
# Enable and start service
Set-Service -Name sshd -StartupType Automatic
Start-Service -name sshd
# Install Microsoft Powershell Remoting
Install-Module -Name Microsoft.PowerShell.RemotingTools
Import-Module -Name Microsoft.PowerShell.RemotingTools
# Configure
Enable-SSHRemoting -Verbose
Restart-Service -Name sshd








