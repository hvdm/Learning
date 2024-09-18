# Why do you need trusted hosts
# 1. Remote system is not part of the domain
# 2. Remote system is part of an untrusted domain
# 3. Connecting to a remote system with local credentials instead of domain credentials

# What are Trusted Host Entries
# 1. Valid IPv4 address
# 2. Valid IPv6 address
# 3. Valid domain name
# 4. Wildcard *

# Create a trusted host entry with CMD
#   winRM set winRM/config/client @{TrustedHosts = <ip_connecting_from}

# Create a trusted host entry with PS
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "ip_connecting_from" -Force

# Adding EXTRA entries
$hosts = (Get-Item -Path WSMan:\localhost\Client\TrustedHosts).Value
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "$hosts, ip_connecting_from" -Force
Get-item WSMan:\localhost\Client\TrustedHosts
# Output:
# WSManConfig: Microsoft.WSMan.Management\WSMan::localhost\Client

# Type            Name                           SourceOfValue   Value
# ----            ----                           -------------   -----
# System.String   TrustedHosts                                   ip_connecting_from

# This must be done on both machines otherwise you can't connect
# A less secure solution is to use * as value, this means any machine can connect






