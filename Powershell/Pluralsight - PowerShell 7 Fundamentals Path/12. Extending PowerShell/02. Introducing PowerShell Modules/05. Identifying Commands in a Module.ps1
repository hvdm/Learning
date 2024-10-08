# Use Get-command to see a list of all commands in all modules on this machine
# It gives a big list
Get-Command

# There is also a command that lists the modules that are allready imported in this session
Get-Command -ListImported

# List only the commands for a certain module
Get-Command -Module BitsTransfer
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Add-BitsFile                                       2.0.0.0    BitsTransfer
# Cmdlet          Complete-BitsTransfer                              2.0.0.0    BitsTransfer
# Cmdlet          Get-BitsTransfer                                   2.0.0.0    BitsTransfer
# Cmdlet          Remove-BitsTransfer                                2.0.0.0    BitsTransfer
# Cmdlet          Resume-BitsTransfer                                2.0.0.0    BitsTransfer
# Cmdlet          Set-BitsTransfer                                   2.0.0.0    BitsTransfer
# Cmdlet          Start-BitsTransfer                                 2.0.0.0    BitsTransfer
# Cmdlet          Suspend-BitsTransfer                               2.0.0.0    BitsTransfer

# List all commands in a module with the Verb GET
Get-Command -Module BitsTransfer -Verb Get
# Output:
# CommandType     Name                                               Version    Source
# ---------- - ----                                               ------ - ------
# Cmdlet          Get-BitsTransfer                                   2.0.0.0    BitsTransfer


# List all commands in a module with wildcards
Get-Command -Module BitsTransfer *file*
# Output:
# CommandType     Name                                               Version    Source
# -----------     ----                                               -------    ------
# Cmdlet          Add-BitsFile                                       2.0.0.0    BitsTransfer
