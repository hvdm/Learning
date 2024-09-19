# Create a Temporary CIM Session and Return Information
#### MAKE SURE "WinRM" IS RUNNING
$computer = "localhost"
Get-CimInstance `
    -ComputerName $computer `
    -Namespace "root/cimv2/TerminalServices" `
    -ClassName "Win32_TerminalServiceSetting"
# Output:
# Caption                                 :
# Description                             :
# InstallDate                             :
# Name                                    :
# Status                                  :
# ActiveDesktop                           : 0
# AllowTSConnections                      : 0
# DeleteTempFolders                       : 1
# DirectConnectLicenseServers             :
# DisableForcibleLogoff                   : 1
# EnableAutomaticReconnection             : 1
# EnableDFSS                              : 0
# EnableDiskFSS                           : 0
# EnableNetworkFSS                        :
# EnableRemoteDesktopMSI                  : 1
# FallbackPrintDriverType                 : 0
# GetCapabilitiesID                       : 65536
# HomeDirectory                           :
# LicensingDescription                    :
# LicensingName                           :
# LicensingType                           : 1
# LimitedUserSessions                     : 0
# Logons                                  :
# NetworkFSSCatchAllWeight                :
# NetworkFSSLocalSystemWeight             :
# NetworkFSSUserSessionWeight             :
# PolicySourceAllowTSConnections          : 0
# PolicySourceConfiguredLicenseServers    : 0
# PolicySourceDeleteTempFolders           : 0
# PolicySourceDirectConnectLicenseServers : 0
# PolicySourceEnableAutomaticReconnection : 0
# PolicySourceEnableDFSS                  : 0
# PolicySourceEnableRemoteDesktopMSI      : 0
# PolicySourceFallbackPrintDriverType     : 0
# PolicySourceHomeDirectory               : 0
# PolicySourceLicensingType               : 0
# PolicySourceProfilePath                 : 0
# PolicySourceRedirectSmartCards          : 0
# PolicySourceSingleSession               : 0
# PolicySourceTimeZoneRedirection         : 0
# PolicySourceUseRDEasyPrintDriver        : 0
# PolicySourceUseTempFolders              : 0
# PossibleLicensingTypes                  : 0
# ProfilePath                             :
# RedirectSmartCards                      : 1
# ServerName                              : XXXXXXX
# SessionBrokerDrainMode                  : 0
# SingleSession                           : 1
# TerminalServerMode                      : 0
# TimeZoneRedirection                     : 0
# UseRDEasyPrintDriver                    : 1
# UserPermission                          : 0
# UseTempFolders                          : 0
# PSComputerName                          : localhost




# Create a CIM Session and Close it
$computer = "localhost"
$sessionName = "TrainingSession"
$session = New-CimSession -Name $sessionName -ComputerName $computer
Get-CimInstance -CimSession $session `
    -Namespace "root/cimv2/TerminalServices" `
    -ClassName "Win32_TerminalServiceSetting"
Remove-CimSession -CimSession $session
# Output:
# Caption                                 : 
# Description                             :
# InstallDate                             :
# Name                                    :
# Status                                  :
# ActiveDesktop                           : 0
# AllowTSConnections                      : 0
# DeleteTempFolders                       : 1
# DirectConnectLicenseServers             :
# DisableForcibleLogoff                   : 1
# EnableAutomaticReconnection             : 1
# EnableDFSS                              : 0
# EnableDiskFSS                           : 0
# EnableNetworkFSS                        :
# EnableRemoteDesktopMSI                  : 1
# FallbackPrintDriverType                 : 0
# GetCapabilitiesID                       : 65536
# HomeDirectory                           :
# LicensingDescription                    :
# LicensingName                           :
# LicensingType                           : 1
# LimitedUserSessions                     : 0
# Logons                                  :
# NetworkFSSCatchAllWeight                :
# NetworkFSSLocalSystemWeight             :
# NetworkFSSUserSessionWeight             :
# PolicySourceAllowTSConnections          : 0
# PolicySourceConfiguredLicenseServers    : 0
# PolicySourceDeleteTempFolders           : 0
# PolicySourceDirectConnectLicenseServers : 0
# PolicySourceEnableAutomaticReconnection : 0
# PolicySourceEnableDFSS                  : 0
# PolicySourceEnableRemoteDesktopMSI      : 0
# PolicySourceFallbackPrintDriverType     : 0
# PolicySourceHomeDirectory               : 0
# PolicySourceLicensingType               : 0
# PolicySourceProfilePath                 : 0
# PolicySourceRedirectSmartCards          : 0
# PolicySourceSingleSession               : 0
# PolicySourceTimeZoneRedirection         : 0
# PolicySourceUseRDEasyPrintDriver        : 0
# PolicySourceUseTempFolders              : 0
# PossibleLicensingTypes                  : 0
# ProfilePath                             :
# RedirectSmartCards                      : 1
# ServerName                              : XXXXXXXX
# SessionBrokerDrainMode                  : 0
# SingleSession                           : 1
# TerminalServerMode                      : 0
# TimeZoneRedirection                     : 0
# UseRDEasyPrintDriver                    : 1
# UserPermission                          : 0
# UseTempFolders                          : 0
# PSComputerName                          : localhost

