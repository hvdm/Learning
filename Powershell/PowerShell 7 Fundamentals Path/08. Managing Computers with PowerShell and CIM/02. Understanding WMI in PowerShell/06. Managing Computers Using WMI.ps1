# Prerequisites for Managing Computers
# 1. Windows Firewall Settings -> Enable WMI through the Firewall
# 2. User Account Control -> Run PowerShell as admin
# 3. DCOM Settings -> Explicit grant Remote DCOM Access, Activation, and Launch Rights
# 4. CIMON settings -> Set AllowAnonymousCallback registry key for machines in another domain / untrusted

# Retrieve all WMI Classes (default Namespace)
Get-WmiObject -List

# Retrieve all WMI Classes where the Name contains "Win32"
Get-WmiObject -List | Where-Object { $_.Name -match "^Win32_" }

# Retrieve a list of all WMI NameSpaces
Get-WmiObject -Namespace Root -Class __NameSpace
Get-WmiObject -Namespace Root -Query "Select * from __NameSpace"

# Retrieve all WMI Classes for a specific NameSpace
Get-WmiObject -Namespace "ROOT\SecurityCenter2" -List

# Retrieve all AntiVirus Product Details
Get-WmiObject -Namespace "ROOT\SecurityCenter2" -Class AntiVirusProduct

