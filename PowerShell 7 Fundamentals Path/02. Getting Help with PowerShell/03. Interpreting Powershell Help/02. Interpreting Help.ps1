# Get help about Get-Service
Get-Help Get-Service

# Get help about Get-Service but for the name parameter only
Get-Help Get-Service -Parameter Name

# Running Get-Service without parameter it shows everything, it doesn't need a parameter
Get-Service

# Running Get-Service with multiple names
Get-Service -name bits,winrm, Winmgmt | Format-Table
# Running without -name also works because -name is the default parameter
Get-Service bits,winrm, Winmgmt | Format-Table

# Piping to Get-Service
"bits","winrm", "Winmgmt" | Get-Service  | Format-Table


