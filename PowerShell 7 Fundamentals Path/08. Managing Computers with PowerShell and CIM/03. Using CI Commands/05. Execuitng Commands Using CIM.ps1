# Query all CIM Instances starting with "p" in the class Win32_Process
Get-CimInstance -Query "SELECT * from Win32_Process WHERE name LIKE 'P%'"
# Output:
# ProcessId Name                    HandleCount WorkingSetSize VirtualSize  
# -------- - ----                    ---------- - -------------- ---------- -
# 11192     PASAgent.exe            300         34562048       4931354624
# 20860     PhoneExperienceHost.exe 879         178544640      2481383542784
# 21688     powershell.exe          557         92348416       2204036485120
# 21820     powershell.exe          1076        171257856      529330176

Get-CimInstance -ClassName Win32_Process -Filter "Name like 'P%'"
# Output:
# ProcessId Name                    HandleCount WorkingSetSize VirtualSize  
# -------- - ----                    ---------- - -------------- ---------- -
# 11192     PASAgent.exe            300         34562048       4931354624
# 20860     PhoneExperienceHost.exe 879         178544640      2481383542784
# 21688     powershell.exe          557         92348416       2204036485120
# 21820     powershell.exe          1076        171257856      529330176


# Retrieve Specific Properties for CIM instance
Get-CimInstance -Class Win32_Process -Property Name, KernelModeTime
# Output:
# ProcessName                : System Idle Process
# Handles                    :
# VM                         :
# WS                         :
# Path                       :
# Caption                    :
# Description                :
# InstallDate                :
# Name                       : System Idle Process
# Status                     :
# CreationClassName          :
# CreationDate               :
# CSCreationClassName        :
# CSName                     :
# ExecutionState             :
# Handle                     : 0
# KernelModeTime             : 909450312500
# OSCreationClassName        :
# OSName                     :

Get-CimInstance -Class Win32_Process -Property Name, KernelModeTime | Format-Table
# Output:
# ProcessId Name                                   HandleCount WorkingSetSize VirtualSize
# -------- - ----                                   ---------- - -------------- ---------- -
# System Idle Process
# System
# Registry
# smss.exe
# csrss.exe


# Create a new CIM Session with default options
New-CimSession
# Output:
# Id           : 1
# Name         : CimSession1
# InstanceId   : 3c1f6554-655c-4db6-a43d-0e405a9eb99f
# ComputerName : localhost
# Protocol     : DCOM

# Create a new CIM Session with a friendly name
New-CimSession -ComputerName localhost -name "TRAINING"


# Pass Credentials to a CIM Session
$creds = Get-Credential
New-CimSession -ComputerName localhost -Credential $creds -Authentication Negotiate


# Terminating a Running Console process
Invoke-CimMethod `
    -Query "Select * from Win32_Process where name like 'cmd%'" `
    -MethodName "Terminate"

    
# Creating a Running Console process with arguments
Invoke-CimMethod `
    -ClassName Win32_Process `
    -MethodName "Create" `
    -Arguments @{ CommandLine = 'cmd.exe'; CurrentDirectory = "C:\Windows\System32" }
    