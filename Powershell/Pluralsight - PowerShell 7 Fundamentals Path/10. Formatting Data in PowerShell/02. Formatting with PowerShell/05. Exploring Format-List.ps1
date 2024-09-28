# Get-process by default outputs to a table
Get-Process
# Output:
#     NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#     ------    -----      -----     ------      --  -- -----------
#          5     1,19       4,67       0,00   12636   0 AggregatorHost
#         17    22,15      18,09       3,23   26664   1 ai
# ..............

# Get-Process outputs with 7 columns in a table view
# Now pipe it to a list
# The name of the properties are different then in the table-view
Get-Process | Format-List
# Output:
# Id      : 12636
# Handles : 98
# CPU     :
# SI      : 0
# Name    : AggregatorHost

# Id      : 26664
# Handles : 217
# CPU     : 3,234375
# SI      : 1
# Name    : ai

# Id      : 27424
# Handles : 211
# CPU     : 3,71875
# SI      : 1
# Name    : ai



# Use get-process to get the processes and format it to a list using groupby, needs sort-object first before grouping
Get-Process | Sort-Object -Property Name | Format-List -GroupBy Name
# Output:
#    Name: AggregatorHost

# Id      : 12636
# Handles : 98
# CPU     :
# SI      : 0
# Name    : AggregatorHost


#     Name: ai

# Id      : 26664
# Handles : 217
# CPU     : 3,296875
# SI      : 1
# Name    : ai

# Id      : 27424
# Handles : 211
# CPU     : 3,765625
# SI      : 1
# Name    : ai


#    Name: AppHelperCap

# Id      : 3184
# Handles : 218
# CPU     :
# SI      : 0
# Name    : AppHelperCap


# Get the process list for WinLogon
Get-Process winlogon | Format-List
# Output:
# Id      : 1432
# Handles : 273
# CPU     : 
# Set-Item      : 1
# Name    : winlogon

# Use Get-Member to determine what properties there are
Get-Process winlogon | Get-Member

# Use -property * to show all the properties
Get-Process winlogon | Format-List -Property *
# Output:
# Name                       : winlogon
# Id                         : 1432
# PriorityClass              : 
# FileVersion                : 
# HandleCount                : 269
# WorkingSet                 : 11722752
# PagedMemorySize            : 4722688
# PrivateMemorySize          : 4722688
# VirtualMemorySize          : 108105728
# TotalProcessorTime         : 
# SI                         : 1
# Handles                    : 269
# VM                         : 2203426328576
# WS                         : 11722752
# PM                         : 4722688
# NPM                        : 14456
# Path                       : 
# CommandLine                : 
# Parent                     : 
# Company                    : 
# CPU                        : 
# ProductVersion             : 
# Description                : 
# Product                    : 
# __NounName                 : Process
# SafeHandle                 : 
# Handle                     : 
# BasePriority               : 13
# ExitCode                   : 
# HasExited                  : 
# StartTime                  : 
# ExitTime                   : 
# MachineName                : .
# MaxWorkingSet              : 
# MinWorkingSet              : 
# Modules                    : 
# NonpagedSystemMemorySize64 : 14456
# NonpagedSystemMemorySize   : 14456
# PagedMemorySize64          : 4722688
# PagedSystemMemorySize64    : 146976
# PagedSystemMemorySize      : 146976
# PeakPagedMemorySize64      : 8228864
# PeakPagedMemorySize        : 8228864
# PeakWorkingSet64           : 29630464
# PeakWorkingSet             : 29630464
# PeakVirtualMemorySize64    : 2203453001728
# PeakVirtualMemorySize      : 134778880
# PriorityBoostEnabled       : 
# PrivateMemorySize64        : 4722688
# ProcessorAffinity          : 
# SessionId                  : 1
# StartInfo                  : 
# Threads                    : {1436, 1980}
# VirtualMemorySize64        : 2203426328576
# EnableRaisingEvents        : False
# StandardInput              : 
# StandardOutput             : 
# StandardError              : 
# WorkingSet64               : 11722752
# SynchronizingObject        : 
# MainModule                 : 
# PrivilegedProcessorTime    : 
# UserProcessorTime          : 
# ProcessName                : winlogon
# MainWindowHandle           : 0
# MainWindowTitle            : 
# Responding                 : True
# Site                       : 
# Container                  : 


# Show just the properties you want to see
Get-Process winlogon | Format-List Name, Id
# Output:
# Name : winlogon
# Id   : 1432

# What if you want to show ProcessName instead of Name
# You need a custom-expression for that
Get-Process winlogon | Format-List @{Name = "Process Name"; Expression = { $_.Name } }, Id
# Output:
# Process Name : winlogon
# Id           : 1432



