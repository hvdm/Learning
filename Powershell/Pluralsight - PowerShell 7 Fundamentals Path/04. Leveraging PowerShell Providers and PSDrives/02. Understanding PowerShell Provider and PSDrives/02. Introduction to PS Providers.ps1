$PSVersionTable
# Output:
# Name                           Value
# ----                           -----
# PSVersion                      7.4.5                          <==========
# PSEdition                      Core
# GitCommitId                    7.4.5
# OS                             Microsoft Windows 10.0.19045   <==========
# Platform                       Win32NT
# PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
# PSRemotingProtocolVersion      2.3
# SerializationVersion           1.1.0.1
# WSManStackVersion              3.0

Get-PSProvider |                                # Get a list of PS Providers
Format-Table                                    # Format it
# Output:
# Name                 Capabilities                                                    Drives
# ----                 ------------                                                    ------
# Registry             ShouldProcess                                                   {HKLM, HKCU}
# Alias                ShouldProcess                                                   {Alias}
# Environment          ShouldProcess                                                   {Env}
# FileSystem           Filter, ShouldProcess, Credentials                              {C, D, Q, Temp…}
# Function             ShouldProcess                                                   {Function}
# Variable             ShouldProcess                                                   {Variable}
# Certificate          ShouldProcess                                                   {Cert}

# In the Drives column you see a list of default providers that are available through PSDrives