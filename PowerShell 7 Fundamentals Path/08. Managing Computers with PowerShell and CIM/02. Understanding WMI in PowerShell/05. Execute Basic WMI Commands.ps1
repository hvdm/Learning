# Get a list of WMI classes that are available
Get-WmiObject -List
# Output
#    NameSpace: ROOT\cimv2

# Name                                Methods              Properties
# ----                                -------              ----------
# __SystemClass                       {}                   {}
# __thisNAMESPACE                     {}                   {SECURITY_DESCRIPTOR}
# __Provider                          {}                   {Name}
# __Win32Provider                     {}                   {ClientLoadableCLSID, CLSID, Concurrency, DefaultMachineName...}
# __ProviderRegistration              {}                   {provider}
# __EventProviderRegistration         {}                   {EventQueryList, provider}
# __ObjectProviderRegistration        {}                   {InteractionType, provider, QuerySupportLevels, SupportsBatching...}
# __ClassProviderRegistration         {}                   {CacheRefreshInterval, InteractionType, PerUserSchema, provider...}
# __InstanceProviderRegistration      {}                   {InteractionType, provider, QuerySupportLevels, SupportsBatching...}
# __MethodProviderRegistration        {}                   {provider}
# __PropertyProviderRegistration      {}                   {provider, SupportsGet, SupportsPut}
# __EventConsumerProviderRegistration {}                   {ConsumerClassNames, provider}
# __NAMESPACE                         {}                   {Name}
# __IndicationRelated                 {}                   {}
# __EventFilter                       {}                   {CreatorSID, EventAccess, EventNamespace, Name...}
# __EventConsumer                     {}                   {CreatorSID, MachineName, MaximumQueueSize}
# __FilterToConsumerBinding           {}                   {Consumer, CreatorSID, DeliverSynchronously, DeliveryQoS...}
# __AggregateEvent                    {}                   {NumberOfEvents, Representative}
# __TimerNextFiring                   {}                   {NextEvent64BitTime, TimerId}
# __Event                             {}                   {SECURITY_DESCRIPTOR, TIME_CREATED}
# __ExtrinsicEvent                    {}                   {SECURITY_DESCRIPTOR, TIME_CREATED}
# Win32_DeviceChangeEvent             {}                   {EventType, SECURITY_DESCRIPTOR, TIME_CREATED}
# Win32_SystemConfigurationChangeE... {}                   {EventType, SECURITY_DESCRIPTOR, TIME_CREATED}
# Win32_VolumeChangeEvent             {}                   {DriveName, EventType, SECURITY_DESCRIPTOR, TIME_CREATED}
# MSFT_WMI_GenericNonCOMEvent         {}                   {ProcessId, PropertyNames, PropertyValues, ProviderName...}
# MSFT_NCProvEvent                    {}                   {Namespace, ProviderName, Result, SECURITY_DESCRIPTOR...}
# MSFT_NCProvCancelQuery              {}                   {ID, Namespace, ProviderName, Result...}
# MSFT_NCProvClientConnected          {}                   {Inproc, Namespace, ProviderName, Result...}
# MSFT_NCProvNewQuery                 {}                   {ID, Namespace, ProviderName, Query...}
# MSFT_NCProvAccessCheck              {}                   {Namespace, ProviderName, Query, QueryLanguage...}
# Win32_SystemTrace                   {}                   {SECURITY_DESCRIPTOR, TIME_CREATED}
# Win32_ProcessTrace                  {}                   {ParentProcessID, ProcessID, ProcessName, SECURITY_DESCRIPTOR...}
#......



# Get a list of WMI classes that are available that matches Win32
Get-WmiObject -List | Where-Object { $_.Name -match "^Win32_" }
# Output
# NameSpace: ROOT\cimv2

# Name                                Methods              Properties
# ----                                ------ - ----------
# Win32_DeviceChangeEvent {} { EventType, SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_SystemConfigurationChangeE... {} { EventType, SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_VolumeChangeEvent {} { DriveName, EventType, SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_SystemTrace {} { SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_ProcessTrace {} { ParentProcessID, ProcessID, ProcessName, SECURITY_DESCRIPTOR... }
# Win32_ProcessStartTrace {} { ParentProcessID, ProcessID, ProcessName, SECURITY_DESCRIPTOR... }
# Win32_ProcessStopTrace {} { ExitStatus, ParentProcessID, ProcessID, ProcessName... }
# Win32_ThreadTrace {} { ProcessID, SECURITY_DESCRIPTOR, ThreadID, TIME_CREATED }
# Win32_ThreadStartTrace {} { ProcessID, SECURITY_DESCRIPTOR, StackBase, StackLimit... }
# Win32_ThreadStopTrace {} { ProcessID, SECURITY_DESCRIPTOR, ThreadID, TIME_CREATED }
# Win32_ModuleTrace {} { SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_ModuleLoadTrace {} { DefaultBase, FileName, ImageBase, ImageChecksum... }
# Win32_PowerManagementEvent {} { EventType, OEMEventCode, SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_ComputerSystemEvent {} { MachineName, SECURITY_DESCRIPTOR, TIME_CREATED }
# Win32_ComputerShutdownEvent {} { MachineName, SECURITY_DESCRIPTOR, TIME_CREATED, Type }
# ......


Get-WmiObject -Namespace ROOT -Class __NAMESPACE
# Output:
# __GENUS          : 2
# __CLASS          : __NAMESPACE
# __SUPERCLASS     : __SystemClass
# __DYNASTY        : __SystemClass
# __RELPATH        : __NAMESPACE.Name="subscription"
# __PROPERTY_COUNT : 1
# __DERIVATION     : {__SystemClass}
# __SERVER         : xxxxxx
# __NAMESPACE      : ROOT
# __PATH           : \\xxxxxx\ROOT:__NAMESPACE.Name="subscription"
# Name             : subscription
# PSComputerName   : xxxxxx

# __GENUS          : 2
# __CLASS          : __NAMESPACE
# __SUPERCLASS     : __SystemClass
# __DYNASTY        : __SystemClass
# __RELPATH        : __NAMESPACE.Name="DEFAULT"
# __PROPERTY_COUNT : 1
# __DERIVATION     : {__SystemClass}
# __SERVER         : xxxxxx
# __NAMESPACE      : ROOT
# __PATH           : \\xxxxxx\ROOT:__NAMESPACE.Name="DEFAULT"
# Name             : DEFAULT
# PSComputerName   : xxxxxx
#......
Get-WmiObject -Namespace ROOT -Query "Select * from __NameSpace"
# Output:
# __GENUS          : 2
# __CLASS          : __NAMESPACE
# __SUPERCLASS     : __SystemClass
# __DYNASTY        : __SystemClass
# __RELPATH        : __NAMESPACE.Name="subscription"
# __PROPERTY_COUNT : 1
# __DERIVATION     : { __SystemClass }
# __SERVER         : xxxxxx
# __NAMESPACE      : ROOT
# __PATH           : \\xxxxxx\ROOT:__NAMESPACE.Name="subscription"
# Name             : subscription
# PSComputerName   : xxxxxx

# __GENUS          : 2
# __CLASS          : __NAMESPACE
# __SUPERCLASS     : __SystemClass
# __DYNASTY        : __SystemClass
# __RELPATH        : __NAMESPACE.Name="DEFAULT"
# __PROPERTY_COUNT : 1
# __DERIVATION     : { __SystemClass }
# __SERVER         : xxxxxx
# __NAMESPACE      : ROOT
# __PATH           : \\xxxxxx\ROOT:__NAMESPACE.Name="DEFAULT"
# Name             : DEFAULT
# PSComputerName   : xxxxxx
# ......


Get-WmiObject Win32_OperatingSystem
# Output:
# SystemDirectory : C:\WINDOWS\system32
# Organization    : Simac
# BuildNumber     : 19045
# RegisteredUser  : Simac
# SerialNumber    : 00329-00000-00003-AA690
# Version         : 10.0.19045

