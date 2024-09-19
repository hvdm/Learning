# Using WMI to retrieve the Operating System Details
Get-WmiObject -Class Win32_OperatingSystem
# Output:
# Organization    : XXXXX
# BuildNumber     : 19045
# RegisteredUser  : XXXXX
# SerialNumber    : XXXXX-XXXXX-XXXXX-XXXXX
# Version         : 10.0.19045


# Using CIM to retrieve the Operating System Details
Get-CimInstance -ClassName Win32_OperatingSystem
# Output:
# Organization    : XXXXX
# BuildNumber     : 19045
# RegisteredUser  : XXXXX
# SerialNumber    : XXXXX-XXXXX-XXXXX-XXXXX
# Version         : 10.0.19045

# List all CIM Classes
Get-CimClass
# Output:
#    NameSpace: ROOT/cimv2

# CimClassName                        CimClassMethods      CimClassProperties
# ------------                        ---------------      ------------------
# __SystemClass                       {}                   {}
# __thisNAMESPACE                     {}                   {SECURITY_DESCRIPTOR}
# __Provider                          {}                   {Name}
# __Win32Provider                     {}                   {Name, ClientLoadableCLSID, CLSID, Concurrency...}
# __ProviderRegistration              {}                   {provider}
# __EventProviderRegistration         {}                   {provider, EventQueryList}
# __ObjectProviderRegistration        {}                   {provider, InteractionType, QuerySupportLevels, SupportsBatching...}
# __ClassProviderRegistration         {}                   {provider, InteractionType, QuerySupportLevels, SupportsBatching...}
# __InstanceProviderRegistration      {}                   {provider, InteractionType, QuerySupportLevels, SupportsBatching...}
# __MethodProviderRegistration        {}                   {provider}
# __PropertyProviderRegistration      {}                   {provider, SupportsGet, SupportsPut}
# __EventConsumerProviderRegistration {}                   {provider, ConsumerClassNames}
# __NAMESPACE                         {}                   {Name}
# __IndicationRelated                 {}                   {}
# __EventFilter                       {}                   {CreatorSID, EventAccess, EventNamespace, Name...}
# __EventConsumer                     {}                   {CreatorSID, MachineName, MaximumQueueSize}
# .......


# List all Win32 Disk Related Classes
Get-CimClass Win32*Disk*
# Output:
#    NameSpace: ROOT/cimv2

# CimClassName                        CimClassMethods      CimClassProperties
# ------------                        ---------------      ------------------
# Win32_DiskDrive                     {SetPowerState, R... {Caption, Description, InstallDate, Name...}
# Win32_LogicalDisk                   {SetPowerState, R... {Caption, Description, InstallDate, Name...}
# Win32_MappedLogicalDisk             {SetPowerState, R... {Caption, Description, InstallDate, Name...}
# Win32_DiskPartition                 {SetPowerState, R... {Caption, Description, InstallDate, Name...}
# Win32_DiskDrivePhysicalMedia        {}                   {Antecedent, Dependent}
# Win32_DiskDriveToDiskPartition      {}                   {Antecedent, Dependent}
# Win32_LogicalDiskToPartition        {}                   {Antecedent, Dependent, EndingAddress, StartingAddress}
# Win32_LogonSessionMappedDisk        {}                   {Antecedent, Dependent}
# Win32_LogicalDiskRootDirectory      {}                   {GroupComponent, PartComponent}
# Win32_DiskQuota                     {}                   {DiskSpaceUsed, Limit, QuotaVolume, Status...}
# Win32_OfflineFilesDiskSpaceLimit    {}                   {AutoCacheSizeInMB, TotalSizeInMB}
# Win32_PerfFormattedData_Counters... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfRawData_Counters_FileS... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfFormattedData_Counters... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfRawData_Counters_Stora... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfFormattedData_PerfDisk... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfRawData_PerfDisk_Logic... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfFormattedData_PerfDisk... {}                   {Caption, Description, Name, Frequency_Object...}
# Win32_PerfRawData_PerfDisk_Physi... {}                   {Caption, Description, Name, Frequency_Object...}


# List CIM Class with Specific Method Name
Get-CimClass -ClassName Win32* -MethodName Term*
# Output:
# NameSpace: ROOT/cimv2

# CimClassName                        CimClassMethods      CimClassProperties
# ------------                        ---------------      ------------------
# Win32_Process                       {Create, Terminat... {Caption, Description, InstallDate, Name...}


# Get a CIM instance for Specific Class (if you know the Name)
Get-CimInstance -ClassName Win32_Process
# Output:
# NameSpace: ROOT/cimv2

# CimClassName                        CimClassMethods      CimClassProperties
# ------------                        -------------- - ------------------
# Win32_Process { Create, Terminat... { Caption, Description, InstallDate, Name... }

# ProcessId Name                                   HandleCount WorkingSetSize VirtualSize  
# -------- - ----                                   ---------- - -------------- ---------- -
# 0         System Idle Process                    0           8192           8192
# 4         System                                 7455        155648         4001792
# 124       Registry                               0           102821888      174424064
# 532       smss.exe                               53          1228800        2203360813056
# 868       csrss.exe                              1056        6463488        2203422183424
# 968       wininit.exe                            164         7446528        2203388755968
# 988       csrss.exe                              976         7315456        2203465023488
# ..........


# Get the CIM Namespaces
Get-CimInstance -Namespace Root -ClassName __NAMESPACE
# Output:
# Name            PSComputerName
# ----            --------------
# subscription
# DEFAULT
# cimv2
# msdtc
# Cli
# Nap
# SECURITY
# SmsDm
# CCMVDI
# SecurityCenter2
# RSOP
# PEH
# HP
# ccm
# MEM
# StandardCimv2
# WMI
# directory
# Policy
# Interop
# Hardware
# ServiceModel
# SecurityCenter
# Microsoft
# Appv


