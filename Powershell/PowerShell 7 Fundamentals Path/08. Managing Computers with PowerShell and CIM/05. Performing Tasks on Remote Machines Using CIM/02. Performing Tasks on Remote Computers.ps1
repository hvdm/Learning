# Retrieve CIM Information Remotely

# Set computer
$computer = "localhost"

# Retrieve Disk info (Win32 and CIM)
Get-CimInstance -ClassName Win32_LogicalDisk -ComputerName $computer
# Output:
# DeviceID DriveType ProviderName              VolumeName  Size          FreeSpace    PSComputerName
# -------- -------- - ------------              ----------  ----          -------- - --------------
# C:       3                                   System      318294192128  92185161728  localhost     
# D:       3                                   Data        1681443979264 753397071872 localhost     

Get-CimInstance -ClassName CIM_LogicalDisk -ComputerName $computer
# Output:
# DeviceID       : C:
# DriveType      : 3
# ProviderName   :
# FreeSpace      : 92165771264
# Size           : 318294192128
# VolumeName     : System
# PSComputerName : localhost

# DeviceID       : D:
# DriveType      : 3
# ProviderName   :
# FreeSpace      : 753397071872
# Size           : 1681443979264
# VolumeName     : Data
# PSComputerName : localhost



# Retrieve Processor (Win32 and CIM)
Get-CimInstance -ClassName Win32_Processor -ComputerName $computer
# Output:
# DeviceID Name                                           Caption                               MaxClockSpeed SocketDesignation Manufacturer PSComput
# erName   
# -------- ----                                           ------ - ------------ - ---------------- - ------------ -------- 
# CPU0     11th Gen Intel(Invoke-History) Core(TM) i5-1135G7 @ 2.40GHz Intel64 Family 6 Model 140 Stepping 1 2419          U3E1              GenuineIntel local... 


Get-CimInstance -ClassName CIM_Processor -ComputerName $computer
# Output:
# DeviceID Name                                           Caption                               MaxClockSpeed SocketDesignation Manufacturer PSComput
# erName   
# -------- ----                                           ------ - ------------ - ---------------- - ------------ -------- 
# CPU0     11th Gen Intel(Invoke-History) Core(TM) i5-1135G7 @ 2.40GHz Intel64 Family 6 Model 140 Stepping 1 2419          U3E1              GenuineIntel local... 




# Retrieve Physical Memory (Win32 and CIM)
Get-CimInstance -ClassName Win32_PhysicalMemory -ComputerName $computer | Format-Table
# Output:
# Caption         Description     InstallDate Name            Status CreationClassName    Manufacturer Model OtherIdentifyingInfo PartNumber
# ------ - ---------- - ---------- - ----            ------ ---------------- - ------------ ---- - -------------------- ----------
# Physical Memory Physical Memory             Physical Memory        Win32_PhysicalMemory Kingston                                9905700-110.A00G... 
# Physical Memory Physical Memory             Physical Memory        Win32_PhysicalMemory Samsung                                 M471A2G43BB2-CWE... 


Get-CimInstance -ClassName CIM_PhysicalMemory -ComputerName $computer | Format-Table
# Output:
# Caption         Description     InstallDate Name            Status CreationClassName    Manufacturer Model OtherIdentifyingInfo PartNumber
# ------ - ---------- - ---------- - ----            ------ ---------------- - ------------ ---- - -------------------- ----------
# Physical Memory Physical Memory             Physical Memory        Win32_PhysicalMemory Kingston                                9905700-110.A00G... 
# Physical Memory Physical Memory             Physical Memory        Win32_PhysicalMemory Samsung                                 M471A2G43BB2-CWE... 




# Retrieve Physical Memory (Win32 and CIM)
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $computer | Format-Table
# Output:
# SystemDirectory     Organization BuildNumber RegisteredUser SerialNumber            Version    PSComputerName
# -------------- - ------------ ---------- - -------------- ------------            ------ - --------------
# C:\WINDOWS\system32 XXXXX        19045       XXXXX          XXXXX-XXXXX-XXXXX-XXXXX 10.0.19045 localhost


Get-CimInstance -ClassName CIM_OperatingSystem -ComputerName $computer | Format-Table
# Output:
# SystemDirectory     Organization BuildNumber RegisteredUser SerialNumber            Version    PSComputerName
# -------------- - ------------ ---------- - -------------- ------------            ------ - --------------
# C:\WINDOWS\system32 XXXXX        19045       XXXXX          XXXXX-XXXXX-XXXXX-XXXXX 10.0.19045 localhost


# Retrieve CIM Class and Identify the Methods
$class = Get-CimClass -ClassName Win32_Process
$class.CimClassMethods
# Output:
# Name                    ReturnType Parameters                                                            Qualifiers
# ----                    ---------- ----------                                                            ----------
# Create                      UInt32 {CommandLine, CurrentDirectory, ProcessStartupInformation, ProcessId} {Constructor, Implemented, MappingStrin... 
# Terminate                   UInt32 {Reason}                                                              {Destructor, Implemented, MappingString... 
# GetOwner                    UInt32 {Domain, User}                                                        {Implemented, MappingStrings, ValueMap}    
# GetOwnerSid                 UInt32 {Sid}                                                                 {Implemented, MappingStrings, ValueMap}    
# SetPriority                 UInt32 {Priority}                                                            {Implemented, MappingStrings, ValueMap}    
# AttachDebugger              UInt32 {}                                                                    {Implemented, ValueMap}
# GetAvailableVirtualSize     UInt32 {AvailableVirtualSize}                                                {Implemented, ValueMap}


# Retrieve CIM Processes Class, using a query for "Notepad"
$process = Get-CimInstance `
    -Query 'Select * from Win32_Process WHERE Name LIKE "Notepad%"'
$process
# Output:
# ProcessId Name        HandleCount WorkingSetSize VirtualSize  
# -------- - ----        ---------- - -------------- ---------- -
# 28024     notepad.exe 258         16318464       2203490713600



# Retrieve CIM Processes Class, using a filter for "Notepad"
$process = Get-CimInstance `
    -ClassName Win32_Process `
    -Filter "Name = 'Notepad.exe'"
$process
# Output:
# ProcessId Name        HandleCount WorkingSetSize VirtualSize  
# -------- - ----        ---------- - -------------- ---------- -
# 28024     notepad.exe 253         16355328       2203487567872




# Retrieve CIM Processes Class, using a query for "Notepad", then use "Terminate" method
$process = Get-CimInstance `
    -Query 'Select * from Win32_Process WHERE Name LIKE "Notepad%"'
$process
# Output:
# ProcessId Name        HandleCount WorkingSetSize VirtualSize  
# -------- - ----        ---------- - -------------- ---------- -
# 28024     notepad.exe 253         16543744       2203488092160

$cimClass = $process.CimClass | Select-Object CimClassName
Get-CimClass -ClassName $cimClass.CimClassName | `
    Select-Object -ExpandProperty CimClassMethods
# Output:
# Name                    ReturnType Parameters                                                            Qualifiers
# ----                    ---------- ----------                                                            ----------
# Create                      UInt32 {CommandLine, CurrentDirectory, ProcessStartupInformation, ProcessId} {Constructor, Implemented, MappingStrin...
# Terminate                   UInt32 {Reason}                                                              {Destructor, Implemented, MappingString...
# GetOwner                    UInt32 {Domain, User}                                                        {Implemented, MappingStrings, ValueMap}   
# GetOwnerSid                 UInt32 {Sid}                                                                 {Implemented, MappingStrings, ValueMap}    
# SetPriority                 UInt32 {Priority}                                                            {Implemented, MappingStrings, ValueMap}    
# AttachDebugger              UInt32 {}                                                                    {Implemented, ValueMap}
# GetAvailableVirtualSize     UInt32 {AvailableVirtualSize}                                                {Implemented, ValueMap}

Invoke-CimMethod -InputObject $process -MethodName Terminate
