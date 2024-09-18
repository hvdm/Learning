# Get the help for Get-Service
Get-Help Get-Service
# This might result in a message:
# Get-Help cannot find the help files for this cmdlet on this computer. etc etc

# Run Update-Help
# Be aware that help files are not automaticly updated when Powershell is updated.
# This might need some time to finish
# Update-Help

# Run Get-help Get-Service -Full to show the full help including examples
Get-help Get-Service -Full

# Run Get-help Get-Service -ShowWindow to show the help in a separate window
# Might not popup but shows on the taskbar
Get-help Get-Service -ShowWindow

# Run Get-help Get-Service -parameter name to show the help for the name parameter only
Get-help Get-Service -Parameter name

# Run Get-help Get-Service -Examples to show the examples
Get-help Get-Service -Examples 





