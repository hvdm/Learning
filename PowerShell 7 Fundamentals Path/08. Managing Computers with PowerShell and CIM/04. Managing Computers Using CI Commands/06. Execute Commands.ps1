#Set CIM Session using DCOM as the protocol
New-CimSessionOption -protocol DCOM
# Output:
# PacketPrivacy   : True
# PacketIntegrity : True
# Impersonation   : Impersonate
# Timeout         : 00:00:00
# Culture         : en-US
# UICulture       : en-US



#Set CIM Session using DCOM as the protocol
New-CimSessionOption -protocol Wsman
# Output:
# DestinationPort                  : 0
# MaxEnvelopeSize                  : 0
# CertCACheck                      : True
# CertCNCheck                      : True
# CertRevocationCheck              : True
# UseSsl                           : False
# ProxyType                        : WinHttp
# PacketEncoding                   : Utf8
# NoEncryption                     : False
# EncodePortInServicePrincipalName : False
# HttpUrlPrefix                    :
# Timeout                          : 00:00:00
# Culture                          : en-US
# UICulture                        : en-US



# Set CIM Session Properties
$creds = Get-Credential
New-CimSessionOption `
    -ProxyAuthentication Kerberos `
    -ProxyCredential $creds `
    -SkipCACheck `
    -SkipCNCheck `
    -UseSsl
# Output:
# DestinationPort                  : 0
# MaxEnvelopeSize                  : 0
# CertCACheck                      : False
# CertCNCheck                      : False
# CertRevocationCheck              : True
# UseSsl                           : True
# ProxyType                        : WinHttp
# PacketEncoding                   : Utf8
# NoEncryption                     : False
# EncodePortInServicePrincipalName : False
# HttpUrlPrefix                    :
# Timeout                          : 00:00:00
# Culture                          : en-US
# UICulture                        : en-US



# Computer to connect to
$computer = "localhost"
# Test if the computer is online/reachable
$computertest = Test-Connection $computer -quiet -count 1 -timetolive 10
# 
if ($computertest -eq $true)
{
    # if online then start a new CIM Session
    $session = New-CimSession `
        -Name "TerminalServices" `
        -ComputerName $computer

    $tsSetting = Get-CimSession `
        -Name $session.Name | `
        Get-CimInstance `
        -Namespace root/cimv2/TerminalServices `
        -ClassName Win32_TerminalServiceSetting

    $tsGeneralSetting = Get-CimSession `
        -Name $session.Name | `
        Get-CimInstance `
        -Namespace root/cimv2/TerminalServices `
        -ClassName Win32_TSGeneralSetting
    
    $tsSetting | Invoke-CimMethod `
        -MethodName SetAllowTSConnections `
        -Arguments @{AllowTSConnections = 1; ModifyFirewallException = 1 } | `
        Format-Table -Property PSComputerName, ReturnValue -AutoSize

    $tsGeneralSetting | Invoke-CimMethod `
        -MethodName SetUserAuthenticationRequired `
        -Arguments @{SetUserAuthenticationRequired = 1 } | Out-Null
        
    Get-CimSession -Name $session.Name | Remove-CimSession
}