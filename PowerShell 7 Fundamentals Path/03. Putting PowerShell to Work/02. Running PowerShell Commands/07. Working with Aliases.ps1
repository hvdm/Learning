# Get directory contents
Get-ChildItem c:\       # Cmdlet
dir C:\                 # Alias windows
ls C:\                  # Alias linux (works on windows as well)

# Get all services
Get-Service             # Cmdlet
gsv                     # Alias

# Get the Cmdlet by alias name
Get-Alias gsv
# Outputs:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Alias           gsv -> Get-Service





