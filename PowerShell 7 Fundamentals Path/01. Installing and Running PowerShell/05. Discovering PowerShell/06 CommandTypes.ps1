# Get a list of all CmdLet's
Get-Command -CommandType Cmdlet

# Get a list of all Function's
Get-Command -CommandType Function

# Get a list of all Aliases
Get-Command -CommandType Alias

#
Get-Command -noun *alias*
# This outputs:
# Cmdlet          Get-Alias                                          7.0.0.0    Microsoft.PowerShell.Utility

Get-Alias
# for example:
# ps = Get-proces
ps | ft
Get-Process | ft

# gcm = Get-Command
gcm
Get-Command

