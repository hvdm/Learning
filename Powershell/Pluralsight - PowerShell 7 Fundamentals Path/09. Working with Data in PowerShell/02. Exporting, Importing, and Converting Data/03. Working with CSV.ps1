# Get a list of all processes started with "e" and export it to a CSV file
Get-Process e* | export-csv -path "$PSScriptRoot\processes.csv"
# Output:
#TYPE System.Diagnostics.Process
# "Name", "SI", "Handles", "VM", "WS", "PM", "NPM", "Path", "Company", "CPU", "FileVersion", "ProductVersion", "Description", "Product", "__NounName", "BasePriority", "ExitCode", "HasExited", "ExitTime", "Handle", "SafeHandle", "HandleCount", "Id", "MachineName", "MainWindowHandle", "MainWindowTitle", "MainModule", "MaxWorkingSet", "MinWorkingSet", "Modules", "NonpagedSystemMemorySize", "NonpagedSystemMemorySize64", "PagedMemorySize", "PagedMemorySize64", "PagedSystemMemorySize", "PagedSystemMemorySize64", "PeakPagedMemorySize", "PeakPagedMemorySize64", "PeakWorkingSet", "PeakWorkingSet64", "PeakVirtualMemorySize", "PeakVirtualMemorySize64", "PriorityBoostEnabled", "PriorityClass", "PrivateMemorySize", "PrivateMemorySize64", "PrivilegedProcessorTime", "ProcessName", "ProcessorAffinity", "Responding", "SessionId", "StartInfo", "StartTime", "SynchronizingObject", "Threads", "TotalProcessorTime", "UserProcessorTime", "VirtualMemorySize", "VirtualMemorySize64", "EnableRaisingEvents", "StandardInput", "StandardOutput", "StandardError", "WorkingSet", "WorkingSet64", "Site", "Container"
# "esif_uf", "0", "152", "2203396931584", "6234112", "2211840", "8216", , , , , , , , "Process", "13", , , , , , "152", "6676", ".", "0", "", , , , , "8216", "8216", "2211840", "2211840", "79768", "79768", "2433024", "2433024", "7430144", "7430144", "91328512", "2203409551360", , , "2211840", "2211840", , "esif_uf", , "True", "0", "System.Diagnostics.ProcessStartInfo", , , "System.Diagnostics.ProcessThreadCollection", , , "78708736", "2203396931584", "False", , , , "6234112", "6234112", ,
# "esrv", "1", "925", "2203796754432", "40574976", "242233344", "34872", "C:\Program Files\Intel\SUR\QUEENCREEK\x64\esrv.exe", "", "85,875", "", "", "", "", "Process", "13", , "False", , "4696", "Microsoft.Win32.SafeHandles.SafeProcessHandle", "925", "24484", ".", "0", "", "System.Diagnostics.ProcessModule (esrv.exe)", "1413120", "204800", "System.Diagnostics.ProcessModuleCollection", "34872", "34872", "242233344", "242233344", "318128", "318128", "306503680", "306503680", "176300032", "176300032", "528875520", "2203847098368", "True", "High", "242233344", "242233344", "00:01:10.4218750", "esrv", "255", "True", "1", "System.Diagnostics.ProcessStartInfo", "18-9-2024 08:54:02", , "System.Diagnostics.ProcessThreadCollection", "00:01:25.8750000", "00:00:15.4531250", "478531584", "2203796754432", "False", , , , "40574976", "40574976", ,
# "esrv_svc", "0", "1712", "2203764637696", "72503296", "238804992", "40720", , , , , , , , "Process", "13", , , , , , "1712", "15780", ".", "0", "", , , , , "40720", "40720", "238804992", "238804992", "279536", "279536", "248324096", "248324096", "224993280", "224993280", "498978816", "2203817201664", , , "238804992", "238804992", , "esrv_svc", , "True", "0", "System.Diagnostics.ProcessStartInfo", , , "System.Diagnostics.ProcessThreadCollection", , , "446414848", "2203764637696", "False", , , , "72503296", "72503296", ,
# "EXCEL", "1", "2473", "1127669760", "229195776", "141656064", "98384", "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE", "Microsoft Corporation", "126,15625", "16.0.17928.20156", "16.0.17928.20156", "Microsoft Excel", "Microsoft Office", "Process", "8", , "False", , "1968", "Microsoft.Win32.SafeHandles.SafeProcessHandle", "2473", "21524", ".", "2428972", "TMZ vervanging netwerk en controle OSDB.xlsx  -  Read-Only - Excel", "System.Diagnostics.ProcessModule (EXCEL.EXE)", "1413120", "204800", "System.Diagnostics.ProcessModuleCollection", "98384", "98384", "141656064", "141656064", "4288264", "4288264", "258498560", "258498560", "374411264", "374411264", "1229733888", "1229733888", "True", "Normal", "141656064", "141656064", "00:01:07.9531250", "EXCEL", "255", "True", "1", "System.Diagnostics.ProcessStartInfo", "18-9-2024 10:21:36", , "System.Diagnostics.ProcessThreadCollection", "00:02:06.1562500", "00:00:58.2031250", "1127669760", "1127669760", "False", , , , "229195776", "229195776", ,
# "explorer", "1", "4318", "2205032189952", "172429312", "240214016", "125392", "C:\WINDOWS\Explorer.EXE", "Microsoft Corporation", "487,546875", "10.0.19041.4474 (WinBuild.160101.0800)", "10.0.19041.4474", "Windows Explorer", "Microsoft? Windows? Operating System", "Process", "8", , "False", , "4584", "Microsoft.Win32.SafeHandles.SafeProcessHandle", "4318", "14788", ".", "65856", "", "System.Diagnostics.ProcessModule (Explorer.EXE)", "1413120", "204800", "System.Diagnostics.ProcessModuleCollection", "125392", "125392", "240214016", "240214016", "1610312", "1610312", "258551808", "258551808", "287723520", "287723520", "2008928256", "2205327151104", "True", "Normal", "240214016", "240214016", "00:05:39.4843750", "explorer", "255", "True", "1", "System.Diagnostics.ProcessStartInfo", "18-9-2024 08:50:02", , "System.Diagnostics.ProcessThreadCollection", "00:08:07.5468750", "00:02:28.0625000", "1713967104", "2205032189952", "False", , , , "172429312", "172429312", ,

# When using the invoke-item it will open the file and starts excel (as the default for csv)
# Invoke-Item "$PSScriptRoot\processes.csv"


# Get a list of all processes started with "e" but select only a few columns and export it to a CSV file
Get-Process e* | Select-Object Name, Handles, Threads, Company, StartTime | export-csv -path "$PSScriptRoot\processes.csv"
Get-Content "$PSScriptRoot\processes.csv"
# Output:
# #TYPE Selected.System.Diagnostics.Process
# "Name", "Handles", "Threads", "Company", "StartTime"
# "esif_uf", "152", "System.Diagnostics.ProcessThreadCollection", ,
# "esrv", "925", "System.Diagnostics.ProcessThreadCollection", "", "18-9-2024 08:54:02"
# "esrv_svc", "1714", "System.Diagnostics.ProcessThreadCollection", ,
# "EXCEL", "2390", "System.Diagnostics.ProcessThreadCollection", "Microsoft Corporation", "18-9-2024 10:21:36"
# "explorer", "4540", "System.Diagnostics.ProcessThreadCollection", "Microsoft Corporation", "18-9-2024 08:50:02"


# Get a list of all processes started with "e" but select only a few columns and append it to a CSV file
Get-Process w* | Select-Object Name, Handles, Threads, Company, StartTime | export-csv -path "$PSScriptRoot\processes.csv" -Append
Get-Content "$PSScriptRoot\processes.csv"
# Output:
#TYPE Selected.System.Diagnostics.Process
# "Name", "Handles", "Threads", "Company", "StartTime"
# "esif_uf", "152", "System.Diagnostics.ProcessThreadCollection", ,
# "esrv", "927", "System.Diagnostics.ProcessThreadCollection", "", "18-9-2024 08:54:02"
# "esrv_svc", "1717", "System.Diagnostics.ProcessThreadCollection", ,
# "EXCEL", "2415", "System.Diagnostics.ProcessThreadCollection", "Microsoft Corporation", "18-9-2024 10:21:36"
# "explorer", "4497", "System.Diagnostics.ProcessThreadCollection", "Microsoft Corporation", "18-9-2024 08:50:02"
# "wininit", "164", "System.Diagnostics.ProcessThreadCollection", ,
# "winlogon", "271", "System.Diagnostics.ProcessThreadCollection", ,
# "WINWORD", "2746", "System.Diagnostics.ProcessThreadCollection", , "19-9-2024 07:50:46"
# "wlanext", "127", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "183", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "591", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "522", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "184", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "676", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "262", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "492", "System.Diagnostics.ProcessThreadCollection", ,
# "WmiPrvSE", "188", "System.Diagnostics.ProcessThreadCollection", ,
# "WsAppService3", "247", "System.Diagnostics.ProcessThreadCollection", ,
# "WUDFHost", "269", "System.Diagnostics.ProcessThreadCollection", ,
# "WUDFHost", "284", "System.Diagnostics.ProcessThreadCollection", ,
# "WUDFHost", "421", "System.Diagnostics.ProcessThreadCollection", ,

# Using a ":" as delimiter
Get-Process e* | Select-Object Name, Handles, Threads, Company, StartTime | export-csv -path "$PSScriptRoot\processesDelim.csv" -Delimiter ':'
Get-Content "$PSScriptRoot\processesDelim.csv"
# Output:
#TYPE Selected.System.Diagnostics.Process
# "Name":"Handles":"Threads":"Company":"StartTime"
# "esif_uf":"152":"System.Diagnostics.ProcessThreadCollection"::
# "esrv":"925":"System.Diagnostics.ProcessThreadCollection":"":"18-9-2024 08:54:02"
# "esrv_svc":"1724":"System.Diagnostics.ProcessThreadCollection"::
# "EXCEL":"2408":"System.Diagnostics.ProcessThreadCollection":"Microsoft Corporation":"18-9-2024 10:21:36"
# "explorer":"4528":"System.Diagnostics.ProcessThreadCollection":"Microsoft Corporation":"18-9-2024 08:50:02"

# Include TypeInformation
Get-Process e* | Select-Object Name, Handles, Threads, Company, StartTime | export-csv -path "$PSScriptRoot\processesWithType.csv" -includeTypeInformation
Get-Content "$PSScriptRoot\processesWithType.csv"
# Output:
#TYPE Selected.System.Diagnostics.Process
# "Name","Handles","Threads","Company","StartTime"
# "esif_uf","152","System.Diagnostics.ProcessThreadCollection",,
# "esrv","927","System.Diagnostics.ProcessThreadCollection","","18-9-2024 08:54:02"
# "esrv_svc","1712","System.Diagnostics.ProcessThreadCollection",,
# "EXCEL","2454","System.Diagnostics.ProcessThreadCollection","Microsoft Corporation","18-9-2024 10:21:36"
# "explorer","4762","System.Diagnostics.ProcessThreadCollection","Microsoft Corporation","18-9-2024 08:50:02"

# Import a CSV file
Import-Csv "$PSScriptRoot\processes.csv"
# Output:
# Name      : esif_uf
# Handles   : 152
# Threads   : System.Diagnostics.ProcessThreadCollection
# Company   : 
# StartTime : 

# Name      : esrv
# Handles   : 925
# Threads   : System.Diagnostics.ProcessThreadCollection
# Company   : 
# StartTime : 18-9-2024 08:54:02

# Name      : esrv_svc
# Handles   : 1714
# Threads   : System.Diagnostics.ProcessThreadCollection
# Company   : 
# StartTime : 

# Name      : EXCEL
# Handles   : 2390
# Threads   : System.Diagnostics.ProcessThreadCollection
# Company   : Microsoft Corporation
# StartTime : 18-9-2024 10:21:36

# Name      : explorer
# Handles   : 4540
# Threads   : System.Diagnostics.ProcessThreadCollection
# Company   : Microsoft Corporation
# StartTime : 18-9-2024 08:50:02


# Import a CSV file and store it into a variable $MyData
$MyData = Import-Csv "$PSScriptRoot\processes.csv"

# Get the members of $MyData
$MyData | Get-Member
# Output:
#    TypeName: System.Management.Automation.PSCustomObject      <-- PSCustomObject

# Name                       MemberType   Definition
# ----                       ----------   ----------
# Equals                     Method       bool Equals(System.Object obj)
# GetHashCode                Method       int GetHashCode()
# GetType                    Method       type GetType()
# ToString                   Method       string ToString()
# BasePriority               NoteProperty string BasePriority=13
# CommandLine                NoteProperty string CommandLine=
# Company                    NoteProperty string Company=
# .......


# Import CSV, exported with delimiter
Import-Csv -Path "$PSScriptRoot\processesDelim.csv" | Format-Table
# Output:
# Name:"Handles":"Threads":"Company":"StartTime"
# ----------------------------------------------
# esif_uf:"152":"System.Diagnostics.ProcessThreadCollection"::
# esrv:"925":"System.Diagnostics.ProcessThreadCollection":"":"18-9-2024 08:54:02"
# esrv_svc:"1714":"System.Diagnostics.ProcessThreadCollection"::
# EXCEL:"2408":"System.Diagnostics.ProcessThreadCollection":"Microsoft Corporation":"18-9-2024 10:21:36"
# explorer:"4536":"System.Diagnostics.ProcessThreadCollection":"Microsoft Corporation":"18-9-2024 08:50:02"

# Import CSV, exported with delimiter
Import-Csv -Path "$PSScriptRoot\processesDelim.csv" -Delimiter ":" | Format-Table
# Output:
# Name     Handles Threads                                    Company               StartTime
# ----     ------- -------                                    -------               ---------
# esif_uf  152     System.Diagnostics.ProcessThreadCollection
# esrv     925     System.Diagnostics.ProcessThreadCollection                       18-9-2024 08:54:02
# esrv_svc 1714    System.Diagnostics.ProcessThreadCollection
# EXCEL    2408    System.Diagnostics.ProcessThreadCollection Microsoft Corporation 18-9-2024 10:21:36
# explorer 4536    System.Diagnostics.ProcessThreadCollection Microsoft Corporation 18-9-2024 08:50:02


# Import a file without header information
Import-Csv -Path "$PSScriptRoot\IceCreamData.csv"
# Output:
# Mary   Jacobson Melbourne Blueberry   <-- first entry becomes the header
# ----   -------- -------- - -------- -
# Derek  Lakeson  Brisbane  Rainbow
# Ashlee Sands    Tokyo     Chocolate
# Jess   Davis    London    Strawberry
# Zoe    Fields             Mint


# Create a header
$Header = "FirstName", "LastName", "City", "Flavour"
Import-Csv -Path "$PSScriptRoot\IceCreamData.csv" -Header $Header
# Output:
# FirstName LastName City      Flavour
# -------- - -------- ----      ------ -
# Mary      Jacobson Melbourne Blueberry
# Derek     Lakeson  Brisbane  Rainbow
# Ashlee    Sands    Tokyo     Chocolate
# Jess      Davis    London    Strawberry
# Zoe       Fields             Mint


# Using convert
# Output:
# "Name", "Handles", "Company"
# "esif_uf", "152",
# "esrv", "927", ""
# "esrv_svc", "1723",
# "EXCEL", "2485", "Microsoft Corporation"
# "explorer", "4884", "Microsoft Corporation"

