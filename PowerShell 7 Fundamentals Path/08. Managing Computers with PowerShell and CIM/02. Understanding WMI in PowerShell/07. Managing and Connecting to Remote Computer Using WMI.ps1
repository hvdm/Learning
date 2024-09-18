# Connect to Local Computer and Retrieve Operating System Details
Get-WmiObject Win32_OperatingSystem -ComputerName localhost
# Output:
# SystemDirectory : C:\WINDOWS\system32
# Organization    : xxxxx
# BuildNumber     : 19045
# RegisteredUser  : xxxxx
# SerialNumber    : xxxxx-xxxxx-xxxxx-xxxxx
# Version         : 10.0.19045


# Connect to Remote Computer and Retrieve Operating System Details
$computer = "server1"
Get-WmiObject Win32_OperatingSystem -ComputerName $computer
# Output:
# SystemDirectory : C:\WINDOWS\system32
# Organization    : xxxxx
# BuildNumber     : 19045
# RegisteredUser  : xxxxx
# SerialNumber    : xxxxx-xxxxx-xxxxx-xxxxx
# Version         : 10.0.19045


# Connect to Remote Computer and Retrieve Operating System Details using credentials
$computer = "server1"
Get-WmiObject -Namespace "root\cimv2" `
    -Class Win32_Process `
    -Impersonation 3 `
    -Credential "CONTOSO\<account>" `
    -ComputerName $computer



# Retrieve all properties for Operating System
$computer = "localhost"
Get-WmiObject -ComputerName $computer `
    -Class Win32_OperatingSystem | Select-Object -Property *
# Output:
# PSComputerName                            : XXXXXXXXXX
# Status                                    : OK
# Name                                      : Microsoft Windows 10 Enterprise|C:\WINDOWS|\Device\Harddisk0\Partition3
# FreePhysicalMemory                        : 12954848
# FreeSpaceInPagingFiles                    : 31220708
# FreeVirtualMemory                         : 31331628
# __GENUS                                   : 2
# __CLASS                                   : Win32_OperatingSystem
# __SUPERCLASS                              : CIM_OperatingSystem
# __DYNASTY                                 : CIM_ManagedSystemElement
# __RELPATH                                 : Win32_OperatingSystem=@
# __PROPERTY_COUNT                          : 64
# __DERIVATION                              : {CIM_OperatingSystem, CIM_LogicalElement, CIM_ManagedSystemElement}
# __SERVER                                  : XXXXXXXXXX
# __NAMESPACE                               : root\cimv2
# __PATH                                    : \\XXXXXXXXXX\root\cimv2:Win32_OperatingSystem=@
# BootDevice                                : \Device\HarddiskVolume1
# BuildNumber                               : 19045
# BuildType                                 : Multiprocessor Free
# Caption                                   : Microsoft Windows 10 Enterprise
# CodeSet                                   : 1252
# CountryCode                               : 1
# CreationClassName                         : Win32_OperatingSystem
# CSCreationClassName                       : Win32_ComputerSystem
# CSDVersion                                :
# CSName                                    : XXXXXXXXXX
# CurrentTimeZone                           : 120
# DataExecutionPrevention_32BitApplications : True
# DataExecutionPrevention_Available         : True
# DataExecutionPrevention_Drivers           : True
# DataExecutionPrevention_SupportPolicy     : 2
# Debug                                     : False
# Description                               : Microsoft Windows 10 Enterprise
# Distributed                               : False
# EncryptionLevel                           : 256
# ForegroundApplicationBoost                : 2
# InstallDate                               : 20230502083544.000000+120
# LargeSystemCache                          :
# LastBootUpTime                            : 20240821082909.502823+120
# LocalDateTime                             : 20240916103640.238000+120
# Locale                                    : 0409
# Manufacturer                              : Microsoft Corporation
# MaxNumberOfProcesses                      : 4294967295
# MaxProcessMemorySize                      : 137438953344
# MUILanguages                              : {en-US}
# NumberOfLicensedUsers                     :
# NumberOfProcesses                         : 403
# NumberOfUsers                             : 7
# OperatingSystemSKU                        : 4
# Organization                              : XXXXXXXXXX
# OSArchitecture                            : 64-bit
# OSLanguage                                : 1033
# OSProductSuite                            : 256
# OSType                                    : 18
# OtherTypeDescription                      :
# PAEEnabled                                :
# PlusProductID                             :
# PlusVersionNumber                         :
# PortableOperatingSystem                   : False
# Primary                                   : True
# ProductType                               : 1
# RegisteredUser                            : XXXXXXXXXX
# SerialNumber                              : XXXXX-XXXXX-XXXXX-XXXXX
# ServicePackMajorVersion                   : 0
# ServicePackMinorVersion                   : 0
# SizeStoredInPagingFiles                   : 33554432
# SuiteMask                                 : 272
# SystemDevice                              : \Device\HarddiskVolume3
# SystemDirectory                           : C:\WINDOWS\system32
# SystemDrive                               : C:
# TotalSwapSpaceSize                        :
# TotalVirtualMemorySize                    : 66322652
# TotalVisibleMemorySize                    : 32768220
# Version                                   : 10.0.19045
# WindowsDirectory                          : C:\WINDOWS
# Scope                                     : System.Management.ManagementScope
# Path                                      : \\XXXXXXXXXX\root\cimv2:Win32_OperatingSystem=@
# Options                                   : System.Management.ObjectGetOptions
# ClassPath                                 : \\XXXXXXXXXX\root\cimv2:Win32_OperatingSystem
# Properties                                : {BootDevice, BuildNumber, BuildType, Caption...}
# SystemProperties                          : {__GENUS, __CLASS, __SUPERCLASS, __DYNASTY...}
# Qualifiers                                : {dynamic, Locale, provider, Singleton...}
# Site                                      :
# Container                                 :



# Select Specific Operating System proeprty
$computer = "localhost"
$object = (Get-WmiObject -ComputerName $computer -Class Win32_OperatingSystem)
($object | Select-Object -Property *).Name
($object | Select-Object -Property *).Manufacturer
# Output:
# Microsoft Windows 10 Enterprise | C:\WINDOWS | \Device\Harddisk0\Partition3
# Microsoft Corporation



# Retrieve "Windows Update" Service Details
$computer = "localhost"
$service = Get-WmiObject -ComputerName $computer -Class Win32_Service `
    -Filter "Name='wuauserv'"
$service
# Output:
# ExitCode  : 0
# Name      : wuauserv
# ProcessId : 0
# StartMode : Manual
# State     : Stopped
# Status    : OK

$service.StartService()
# Output:
# __GENUS          : 2
# __CLASS          : __PARAMETERS
# __SUPERCLASS     :
# __DYNASTY        : __PARAMETERS
# __RELPATH        :
# __PROPERTY_COUNT : 1
# __DERIVATION     : {}
# __SERVER         :
# __NAMESPACE      :
# __PATH           :
# ReturnValue      : 0
# PSComputerName   :

