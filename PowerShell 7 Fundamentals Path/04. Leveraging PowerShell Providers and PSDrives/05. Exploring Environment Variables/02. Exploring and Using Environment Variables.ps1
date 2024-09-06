# Get a list of all environment variables allready available in the system
Get-ChildItem Env:\
# Output:
# Name                           Value
# ----                           -----
# ALLUSERSPROFILE                C:\ProgramData
# APPDATA                        C:\Users\<username>\AppData\Roaming
# COLORTERM                      truecolor
# CommonProgramFiles             C:\Program Files\Common Files
# CommonProgramFiles(x86)        C:\Program Files (x86)\Common Files
# CommonProgramW6432             C:\Program Files\Common Files
# COMPUTERNAME                   XXX
# ComSpec                        C:\WINDOWS\system32\cmd.exe
# DEFLOGDIR                      C:\ProgramData\McAfee\Endpoint Security\Logs
# DriverData                     C:\Windows\System32\Drivers\DriverData
# HOMEDRIVE                      C:
# HOMEPATH                       \Users\<username>
# JAVA_HOME                      C:\Program Files\Eclipse Adoptium\jre-11.0.21.9-hotspot\
# LANG                           en_US.UTF-8
# LOCALAPPDATA                   C:\Users\<username>\AppData\Local
# LOGONSERVER                    
# NUMBER_OF_PROCESSORS           8
# OneDrive                       D:\<username>\OneDrive
# OneDriveCommercial             D:\<username>\OneDrive
# ORIGINAL_XDG_CURRENT_DESKTOP   undefined
# OS                             Windows_NT
# Path                           C:\Program Files\PowerShell\7;C:\Program Files (x86)\VMware\VMware Workstation\bin\;C:\Program Files\Eclipse Adopti… 
# PATHEXT                        .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.CPL
# POWERSHELL_DISTRIBUTION_CHANN… PSES
# POWERSHELL_TELEMETRY_OPTOUT    1
# PROCESSOR_ARCHITECTURE         AMD64
# PROCESSOR_IDENTIFIER           Intel64 Family 6 Model 140 Stepping 1, GenuineIntel
# PROCESSOR_LEVEL                6
# PROCESSOR_REVISION             8c01
# ProgramData                    C:\ProgramData
# ProgramFiles                   C:\Program Files
# ProgramFiles(x86)              C:\Program Files (x86)
# ProgramW6432                   C:\Program Files
# .....

# Get a variable
$env:ALLUSERSPROFILE
# Output:
# C:\ProgramData
