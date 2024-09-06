##### Custom Properties #####

Get-TimeZone
# Id                         : W. Europe Standard Time
# HasIanaId                  : False
# DisplayName                : (UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna
# StandardName               : W. Europe Standard Time
# DaylightName               : W. Europe Daylight Time
# BaseUtcOffset              : 01:00:00
# SupportsDaylightSavingTime : True

# Select ALL the properties AND create an additional custom property.
# The property name is created with the custom hashtable with two pre-defined keys "name" and "expression"
# The name of the property is "ComputerName", the expression will be the code in the scriptblock
Get-TimeZone | Select-Object *, @{Name="ComputerName"; Expression={$Env:COMPUTERNAME}}
# Id                         : W. Europe Standard Time
# HasIanaId                  : False
# DisplayName                : (UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna
# StandardName               : W. Europe Standard Time
# DaylightName               : W. Europe Daylight Time
# BaseUtcOffset              : 01:00:00
# SupportsDaylightSavingTime : True
# ComputerName               : MyComputerName <---------------

# Get the processes with Get-Process
# Filter on where the workinset is >= 50mb with Where-Object
# Select the item properties needed (ID and Name) with Select-Object
# Create a custom property "MemoryMB" with a value ($_ in the pipeline) with @{Name="MemoryMB"; Expression = {($_.WorkingSet / 1mb) -as [int32]}
# Create a custom property "Threads" with a value ($_ in the pipeline) with @{Name="Threads"; Expression = {($_.Threads.Count)}
# Create a custom property "Runtime" with a value ($_ in the pipeline) with @{Name="Runtime"; Expression = {(Get-Date) - ($_.Starttime)}}
Get-Process | Where-Object {$_.WorkingSet -ge 50MB} | Select-Object id, name, @{Name="MemoryMB"; Expression = {($_.WorkingSet / 1mb) -as [int32]}},
                                                                              @{Name="Threads"; Expression = {($_.Threads.Count)}},
                                                                              @{Name="Runtime"; Expression = {(Get-Date) - ($_.Starttime)}} | FT


# Using 1..10 
# Sort them witha custom proerty that doesnt even exist, using the modulu operator (remainder) so that it sort on even and odd 
1..10 | Sort-Object -Property {$_%2}

# Run Get-ChildItem item on a the Temp folder to get the top-level Directories
# Sort the top-level directories 
# Select the firts 5
Get-ChildItem C:\Temp -Directory | Sort-Object -Property {(Get-ChildItem $_.FullName -File -Recurse).Count} -Descending | Select-Object -First 5

#
Get-ChildItem q:\powershell\*.ps1 -Recurse | Group-Object -Property {$_.LastWriteTime.Year}


##### Custom Objects #####
# get a list of all processes
$ps = Get-CimInstance Win32_Process
# get a list of running services
$svc = Get-CimInstance Win32_Service -Filter "status = 'running'"

# Create a custom hash table to hold the results
$hash = @{
            ComputerName = $env:COMPUTERNAME
            Version = $PSVersionTable.PSVersion
            ProcessCount = $ps.Count
            ServiceCount = $svc.Count
            Uptime = Get-Uptime
         }

$hash | ft

# Create a new object with New-Object
# Use psobject as typename
# use hastable $hash for all of the properties
# Tee it to a variable $new for later use 
New-Object -TypeName psobject -Property $hash | tee -v new
$new | Get-Member | ft

#   TypeName: System.Management.Automation.PSCustomObject
# Name         MemberType   Definition
# ----         ----------   ----------
# Equals       Method       bool Equals(System.Object obj)
# GetHashCode  Method       int GetHashCode()
# GetType      Method       type GetType()
# ToString     Method       string ToString()
# ComputerName NoteProperty string ComputerName=MyComputerName <-----
# ProcessCount NoteProperty int ProcessCount=212 <-----
# ServiceCount NoteProperty int ServiceCount=0 <-----
# Uptime       NoteProperty System.TimeSpan Uptime=9.00:55:26 <-----
# Version      NoteProperty semver Version=7.4.3 <-----

# Another way to do this
# Create a variable $obj
$obj = [PSCustomObject]@{
                            ComputerName = $env:COMPUTERNAME
                            Version = $PSVersionTable.PSVersion
                            ProcessCount = $ps.Count
                            ServiceCount = $svc.Count
                            TimeZone = (Get-TimeZone).DisplayName
                            Uptime = Get-Uptime
                        }
$obj

$procs = Get-Process | Where-Object {$_.WorkingSet -ge 50mb}
foreach ($p in $procs)
{
[PSCustomObject]@{

    ID = $p.Id
    Name = $p.Name
    MemoryMB = ($p.WorkingSet / 1mb) -as [int32]
    Threads = $p.Threads.Count
    RunTime = [timespan]((Get-Date) - ($p.StartTime))
    # ComputerName = $env.ComputerName
}
}