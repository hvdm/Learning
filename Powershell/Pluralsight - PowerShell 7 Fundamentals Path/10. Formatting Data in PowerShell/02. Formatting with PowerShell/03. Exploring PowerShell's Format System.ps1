# Create a variable MyString.
$MyString = "This is a string of text. Nothing too exciting."

# Get the members of the string variable 
$MyString | Get-Member
# Output:
#    TypeName: System.String

# Name                 MemberType            Definition
# ----                 ----------            ----------
# Clone                Method                System.Object Clone(), System.Object ICloneab… 
# CompareTo            Method                int CompareTo(System.Object value), int Compa… 
# Contains             Method                bool Contains(string value), bool Contains(st… 
# CopyTo               Method                void CopyTo(int sourceIndex, char[] destinati… 
# EndsWith             Method                bool EndsWith(string value), bool EndsWith(st… 
# EnumerateRunes       Method                System.Text.StringRuneEnumerator EnumerateRun… 
# Equals               Method                bool Equals(System.Object obj), bool Equals(s… 
# GetEnumerator        Method                System.CharEnumerator GetEnumerator(), System… 
# GetHashCode          Method                int GetHashCode(), int GetHashCode(System.Str… 
# GetPinnableReference Method                System.Char&, System.Private.CoreLib, Version… 
# GetType              Method                type GetType()
# GetTypeCode          Method                System.TypeCode GetTypeCode(), System.TypeCod… 
# IndexOf              Method                int IndexOf(char value), int IndexOf(char val… 
# IndexOfAny           Method                int IndexOfAny(char[] anyOf), int IndexOfAny(… 
# Insert               Method                string Insert(int startIndex, string value)    
# IsNormalized         Method                bool IsNormalized(), bool IsNormalized(System… 
# LastIndexOf          Method                int LastIndexOf(char value), int LastIndexOf(… 
# LastIndexOfAny       Method                int LastIndexOfAny(char[] anyOf), int LastInd… 
# Normalize            Method                string Normalize(), string Normalize(System.T… 
# PadLeft              Method                string PadLeft(int totalWidth), string PadLef… 
# PadRight             Method                string PadRight(int totalWidth), string PadRi… 
# Remove               Method                string Remove(int startIndex, int count), str… 
# Replace              Method                string Replace(string oldValue, string newVal… 
# ReplaceLineEndings   Method                string ReplaceLineEndings(), string ReplaceLi… 
# Split                Method                string[] Split(char separator, System.StringS… 
# StartsWith           Method                bool StartsWith(string value), bool StartsWit… 
# Substring            Method                string Substring(int startIndex), string Subs… 
# ToBoolean            Method                bool IConvertible.ToBoolean(System.IFormatPro… 
# ToByte               Method                byte IConvertible.ToByte(System.IFormatProvid… 
# ToChar               Method                char IConvertible.ToChar(System.IFormatProvid… 
# ToCharArray          Method                char[] ToCharArray(), char[] ToCharArray(int … 
# ToDateTime           Method                datetime IConvertible.ToDateTime(System.IForm… 
# ToDecimal            Method                decimal IConvertible.ToDecimal(System.IFormat… 
# ToDouble             Method                double IConvertible.ToDouble(System.IFormatPr… 
# ToInt16              Method                short IConvertible.ToInt16(System.IFormatProv… 
# ToInt32              Method                int IConvertible.ToInt32(System.IFormatProvid… 
# ToInt64              Method                long IConvertible.ToInt64(System.IFormatProvi… 
# ToLower              Method                string ToLower(), string ToLower(cultureinfo … 
# ToLowerInvariant     Method                string ToLowerInvariant()
# ToSByte              Method                sbyte IConvertible.ToSByte(System.IFormatProv… 
# ToSingle             Method                float IConvertible.ToSingle(System.IFormatPro… 
# ToString             Method                string ToString(), string ToString(System.IFo… 
# ToType               Method                System.Object IConvertible.ToType(type conver… 
# ToUInt16             Method                ushort IConvertible.ToUInt16(System.IFormatPr… 
# ToUInt32             Method                uint IConvertible.ToUInt32(System.IFormatProv… 
# ToUInt64             Method                ulong IConvertible.ToUInt64(System.IFormatPro… 
# ToUpper              Method                string ToUpper(), string ToUpper(cultureinfo … 
# ToUpperInvariant     Method                string ToUpperInvariant()
# Trim                 Method                string Trim(), string Trim(char trimChar), st… 
# TrimEnd              Method                string TrimEnd(), string TrimEnd(char trimCha… 
# TrimStart            Method                string TrimStart(), string TrimStart(char tri… 
# TryCopyTo            Method                bool TryCopyTo(System.Span[char] destination)  
# Chars                ParameterizedProperty char Chars(int index) {get;}
# Length               Property              int Length {get;}

# Display just the string
$MyString

# Format as a table
# This wont work because $MyString is a string and not an object
$MyString | Format-Table

# Format as a list
# This wont work because $MyString is a string and not an object
$MyString | Format-List


# Get a list of network adapters
Get-NetAdapter
# Name                      InterfaceDescription                    ifIndex Status       MacAddress 
# ----                      --------------------                    ------ - ------       -- 
# LAN Docking               Realtek USB GbE Family Controller #2         21 Up           A…
# Wi-Fi                     Intel(Invoke-History) Wi-Fi 6 AX201 160MHz                20 Disconnected 7…
# Bluetooth Network Connec… Bluetooth Device (Personal Area Networ…       5 Disconnected 7…

# By default everything is sent to Out-Default, and that's sent to Out-Host
# Get a list of network adapters
Get-NetAdapter
# Name                      InterfaceDescription                    ifIndex Status       MacAddress 
# ----                      --------------------                    ------ - ------       -- 
# LAN Docking               Realtek USB GbE Family Controller #2         21 Up           A…
# Wi-Fi                     Intel(Invoke-History) Wi-Fi 6 AX201 160MHz                20 Disconnected 7…
# Bluetooth Network Connec… Bluetooth Device (Personal Area Networ…       5 Disconnected 7…

# Default table output
Get-Process
# Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    ---- - ---- - ------      --  -- ---------- -
# 34   102, 95     169, 84       6, 53     480   1 chrome
# 12    14, 04      26, 55       0, 05    1260   1 Code
# .....

Get-Process | Get-Member
# TypeName: System.Diagnostics.Process <---------------------

# Name                       MemberType     Definition
# ----                       ----------     ----------
# Handles                    AliasProperty  Handles = Handlecount
# Name                       AliasProperty  Name = ProcessName


Get-FormatData
# TypeNames                                                                                                                                                                         FormatViewDefinition
# ---------                                                                                                                                                                         --------------------
# {System.Security.Cryptography.X509Certificates.X509Certificate2}                                                                                                                  {ThumbprintTable}
# {Microsoft.PowerShell.Commands.X509StoreLocation, System.Security.Cryptography.X509Certificates.X509Certificate2, System.Security.Cryptography.X509Certificates.X509Store}        {ThumbprintList, ThumbprintWide… 
# {System.Management.Automation.Signature}                                                                                                                                          {PSThumbprintTable, PSThumbprin… 
# {System.Security.Cryptography.X509Certificates.X509CertificateEx}                                                                                                                 {System.Security.Cryptography.X… 
# {System.CodeDom.Compiler.CompilerError}
# ...............


Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1
# TypeNames                    FormatViewDefinition
# -------- - --------------------
# { System.Diagnostics.Process } { process, Priority, StartTime, process }


# Place the output in a variable
$formatdata = Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1
# Show the format definitions
$formatdata.FormatViewDefinition
# Output:
# Name      Control
# ----      ------ -
# process   System.Management.Automation.TableControl
# Priority  System.Management.Automation.TableControl
# StartTime System.Management.Automation.TableControl
# process   System.Management.Automation.WideControl

# Output the values of Table Control
$formatdata.FormatViewDefinition[0].Control
# Output:
# Headers          : { System.Management.Automation.TableControlColumnHeader, System.Management.Automation.TableControlColumnHeader, System.Management.Automation.TableControlColumnHeader, System.Management.Automation.TableControlColumnHeader… }
# Rows             : { System.Management.Automation.TableControlRow }
# AutoSize         : False
# HideTableHeaders : False
# GroupBy          : 
# OutOfBand        : False

# Output the values of Table Control Headers
$formatdata.FormatViewDefinition[0].Control.Headers
# Output:
# Label  Alignment Width
# ---- - -------- - ---- -
# NPM(K)     Right     7
# PM(M)      Right     8
# WS(M)      Right    10
# CPU(s)     Right    10
# Right     7
# Right     3
# Undefined     0



# Output the View Definition to a XML file
Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1 | Export-FormatData -Path "$((Get-Location).Path)\process.xml"


# Let's connect with Google
Test-NetConnection -ComputerName www.google.com -CommonTCPPort HTTP
# Output:
# ComputerName     : www.google.com
# RemoteAddress    : 172.217.23.196
# RemotePort       : 80
# InterfaceAlias   : Wi-Fi
# SourceAddress    : 192.168.22.8
# TcpTestSucceeded : True


# Let's see it's members
Test-NetConnection -ComputerName www.google.com -CommonTCPPort HTTP | Get-Member
# Output:
#    TypeName: TestNetConnectionResult      <--------------------

# Name                     MemberType Definition
# ----                     ---------- ----------
# Equals                   Method     bool Equals(System.Object obj)
# GetHashCode              Method     int GetHashCode()
# GetType                  Method     type GetType()
# ToString                 Method     string ToString()
# AllNameResolutionResults Property   System.Object AllNameResolutionResults {get;set;}
# BasicNameResolution      Property   System.Object BasicNameResolution {get;set;}
# ComputerName             Property   string ComputerName {get;set;}
# Detailed                 Property   bool Detailed {get;set;}
# DNSOnlyRecords           Property   System.Object DNSOnlyRecords {get;set;}
# InterfaceAlias           Property   string InterfaceAlias {get;set;}
# InterfaceDescription     Property   string InterfaceDescription {get;set;}
# InterfaceIndex           Property   uint InterfaceIndex {get;set;}
# IsAdmin                  Property   bool IsAdmin {get;set;}
# LLMNRNetbiosRecords      Property   System.Object LLMNRNetbiosRecords {get;set;}
# MatchingIPsecRules       Property   ciminstance[] MatchingIPsecRules {get;set;}
# NameResolutionSucceeded  Property   bool NameResolutionSucceeded {get;set;}
# NetAdapter               Property   ciminstance NetAdapter {get;set;}
# NetRoute                 Property   ciminstance NetRoute {get;set;}
# NetworkIsolationContext  Property   string NetworkIsolationContext {get;set;}
# PingReplyDetails         Property   System.Net.NetworkInformation.PingReply PingReplyDetails {get;set;}
# PingSucceeded            Property   bool PingSucceeded {get;set;}
# RemoteAddress            Property   ipaddress RemoteAddress {get;set;}
# RemotePort               Property   uint RemotePort {get;set;}
# ResolvedAddresses        Property   ipaddress[] ResolvedAddresses {get;set;}
# SourceAddress            Property   ciminstance SourceAddress {get;set;}
# TcpClientSocket          Property   System.Net.Sockets.Socket TcpClientSocket {get;set;}
# TcpTestSucceeded         Property   bool TcpTestSucceeded {get;set;}
# TraceRoute               Property   string[] TraceRoute {get;set;}


# Default PowerShell shows:
# > 5 columns = List
# < 5 columns = Table

# 4 Columns
Test-NetConnection -ComputerName www.google.com -CommonTCPPort HTTP | Select-Object ComputerName, RemoteAddress, RemotePort, SourceAddress
# Output:
# ComputerName   RemoteAddress  RemotePort SourceAddress
# ------------   ------------ - ---------- ------------ -
# www.google.com 172.217.23.196         80 192.168.22.8

# 5 Columns
Test-NetConnection -ComputerName www.google.com -CommonTCPPort HTTP | Select-Object ComputerName, RemoteAddress, RemotePort, SourceAddress, PingSucceeded
# Output:
# ComputerName  : www.google.com
# RemoteAddress : 172.217.23.196
# RemotePort    : 80
# SourceAddress : 192.168.22.8
# PingSucceeded : False


# 5 Columns but force to use a table
Test-NetConnection -ComputerName www.google.com -CommonTCPPort HTTP | Select-Object ComputerName, RemoteAddress, RemotePort, SourceAddress, PingSucceeded | Format-Table
# Output:
# ComputerName   RemoteAddress  RemotePort SourceAddress PingSucceeded
# ------------   ------------ - ---------- ------------ - ------------ -
# www.google.com 172.217.23.196         80 192.168.22.8          False


