# Get the processes and sort them descending and show the first 5
Get-Process |                                   # Get a list of all processes
Sort-Object WorkingSet -Descending |            # sort on the WorkingSet property, descending
Select-Object -First 5                          # Select only the first 5
# Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    -----      -----     ------      --  -- -----------
#      0     4,40   1.570,96       0,00    4332   0 Memory Compression
#     63   776,15     680,66     102,53   49824   1 java
#    311   564,19     583,09  27.114,39   19972   1 OUTLOOK
#     64   933,20     508,17   3.718,09   37192   1 msedgewebview2
#    252   336,62     439,25      79,27   46320   1 pwsh

#
dir $env:TEMP -Recurse -File |                  #
Measure-Object Length -AllStats                 # Measure how much space it's using
Select-Object * -ExcludeProperty property       # Select all properties EXCEPT the property output
# Output:
# Count             : 11862
# Average           : 552473,906761086
# Sum               : 6553445482
# Maximum           : 200606664
# Minimum           : 0
# StandardDeviation : 4406440,87576713
# Property          : Length

# Get a list of the Eventlogs
Get-WinEvent -ListLog * |
Sort-Object FileSize -Descending |
Select-Object `
  -First 10 -Property LogName, RecordCount, FileSize |
Format-Table
# Output:
# LogName                                        RecordCount FileSize
# -------                                        ----------- --------
# Microsoft-Windows-Storage-Storport/Operational       15649 22089728
# Cisco AnyConnect Network Access Manager              35441 20975616
# Microsoft-Windows-Store/Operational                  28102 20058112
# Microsoft-Windows-LAPS/Operational                   42682 16846848
# Windows PowerShell                                    8007 15732736
# Microsoft-Windows-PowerShell/Operational             13749 15732736
# PowerShellCore/Operational                           19554 15732736
# Microsoft-Windows-TaskScheduler/Operational          17358 10489856
# Microsoft-Windows-Storage-ClassPnP/Operational       11887  6295552
# System                                                9364  5246976

Get-WinEvent -LogName System -MaxEvents 1 |     # Get one entry from the System eventlog
Select-Object *                                 # Ge all it's properties
# Output:
# Message              : The system is exiting connected standby 

#                        Reason: Input Keyboard.
# Id                   : 507
# Version              : 9
# Qualifiers           : 
# Level                : 4
# Task                 : 158
# Opcode               : 0
# Keywords             : -9223372036854774268
# RecordId             : 111334
# ProviderName         : Microsoft-Windows-Kernel-Power
# ProviderId           : 331c3b3a-2005-44c2-ac5e-77220c37d6b4
# LogName              : System
# ProcessId            : 4
# ThreadId             : 644
# MachineName          : -
# UserId               : S-1-5-18
# TimeCreated          : 2-9-2024 11:12:35
# ActivityId           : 
# RelatedActivityId    : 
# ContainerLog         : System
# MatchedQueryIds      : {}
# Bookmark             : System.Diagnostics.Eventing.Reader.EventBookmark
# LevelDisplayName     : Information
# OpcodeDisplayName    : Info
# TaskDisplayName      : 
# KeywordsDisplayNames : {}
# Properties           : {System.Diagnostics.Eventing.Reader.EventProperty, System.Diagnostics.Eventing.Reader.EventProperty, System.Diagnostics.Eventing.Read 
#                        er.EventProperty, System.Diagnostics.Eventing.Reader.EventProperty…}


Get-WinEvent -LogName System -MaxEvents 1000    # Get the last 1000 entries from the System eventlog
Group-Object -NoElement |                       # Group them by provider name
Sort-Object Count -Descending |                 # Sort on the Count property 
Select-Object -First 10 |                       # Select the first 10
Out-ConsoleGridView
# Output:
# Shows in the ConsoleGridView

