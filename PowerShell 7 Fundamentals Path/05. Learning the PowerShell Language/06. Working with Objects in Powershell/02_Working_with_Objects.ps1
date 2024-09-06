# Create a variable that holds a date string
$d = "12/31/2024"

# This can't be because $d is a string
$d - (Get-Date)

# Recreate the object as a datetime
[datetime]$d = "12/31/2024"
# Now it has the right format
$d - (Get-Date)

$i = '10'
# This will display the string $i 10 times
$i * $i

$i -is [int32]
$i -is [string]

# threat $i as a int32 instead of a string
$i -as [int32]
# Create an expression
($i -as [int32]) * 3

#treat a string like a version number
"1.0" -as [version]
# Create a variable $v as a version
[version]$v = "1.2.3"
$v

Remove-Variable d
#Reassign $d
$d = "12/31/2024"
($d -as [datetime]) - (Get-Date)

# What is $d, is it a string, datetime
$d
$d.GetType().Name

$p = Get-Process -id $PID
$p
# It lists the following
# Id      : 7884
# Handles : 980
# CPU     : 30,421875
# SI      : 2
# Name    : pwsh

# BUt it has more
$p | Get-Member -MemberType Properties |ft

$all = Get-Process
$all.Name

# Use Get-Vegetable from PSteachingtools
Get-Vegetable
# Output
# UPC  Count Name            State Color
# ---  ----- ----            ----- -----
# 4078    12 corn            Raw   yellow
# 4064     4 tomato          Raw   red
# 4062    11 cucumber        Raw   green
# 4562    10 carrot          Raw   orange
# 4089    13 radish          Raw   red
# 4674    14 peas            Raw   green
# 4811    12 turnip          Raw   purple
# 4725    18 russet potato   Raw   brown
# 4060    15 broccoli        Raw   green
# 4067     7 zucchini        Raw   green
# 4090     4 spinach         Raw   green
# 4572     7 cauliflower     Raw   white
# 3125    17 habanero pepper Raw   orange
# 4677    16 Anaheim pepper  Raw   green
# 4088    19 red bell pepper Raw   red
# 4081     6 eggplant        Raw   purple
# 4604     2 endive          Raw   green

# Select Name, State and Count
Get-Vegetable | Select-Object Name, State, Count | FT
# State is empty, why is that
# Get the members
Get-Vegetable | Get-Member
# Name        MemberType Definition
# ----        ---------- ----------
# Equals      Method     bool Equals(System.Object obj)
# GetHashCode Method     int GetHashCode()
# GetType     Method     type GetType()
# Peel        Method     void Peel()
# Prepare     Method     void Prepare(PSTeachingTools.VegStatus State)
# ToString    Method     string ToString()
# Color       Property   PSTeachingTools.VegColor Color {get;}
# CookedState Property   PSTeachingTools.VegStatus CookedState {get;set;}
# Count       Property   int Count {get;set;}
# IsPeeled    Property   bool IsPeeled {get;set;}
# IsRoot      Property   bool IsRoot {get;}
# Name        Property   string Name {get;}
# UPC         Property   int UPC {get;}

# There is NO member for state
Get-Vegetable corn | Select-Object *
# Name        : corn
# Count       : 12
# UPC         : 4078
# CookedState : Raw
# IsRoot      : False
# IsPeeled    : False
# Color       : yellow

# Instead of Statem use CookedState
Get-Vegetable | Select-Object Name, CookedState, Count | FT

Get-WinEvent -logname system -MaxEvents 1 -OutVariable e
# TimeCreated           Id LevelDisplayName Message
# -----------           -- ---------------- -------
# 31/07/2024 07:53:50 7009 Error            A timeout was reached (30000 milliseconds) while waiting for the Intel(R) SUR QC Software Asset Manager s… 

# It shows by default the above output but there is more
# output is saved to $e
$e | Get-Member | FT
# Now get some more info
Get-WinEvent -logname system -MaxEvents 10 | Select-Object LogName, LevelDisplayName, ProviderName, MachineName | FT

# Objects have also methods
# Start notepad
####### notepad.exe
# Get the process information
$n = Get-Process notepad 
$n | Get-Member -MemberType Methods
# TypeName: System.Diagnostics.Process

# Name                      MemberType Definition
# ----                      ---------- ----------
# BeginErrorReadLine        Method     void BeginErrorReadLine()
# BeginOutputReadLine       Method     void BeginOutputReadLine()
# CancelErrorRead           Method     void CancelErrorRead()
# CancelOutputRead          Method     void CancelOutputRead()
# Close                     Method     void Close()
# CloseMainWindow           Method     bool CloseMainWindow()
# Dispose                   Method     void Dispose(), void IDisposable.Dispose()
# Equals                    Method     bool Equals(System.Object obj)
# GetHashCode               Method     int GetHashCode()
# GetLifetimeService        Method     System.Object GetLifetimeService()
# GetType                   Method     type GetType()
# InitializeLifetimeService Method     System.Object InitializeLifetimeService()
# Kill                      Method     void Kill(), void Kill(bool entireProcessTree)
# Refresh                   Method     void Refresh()
# Start                     Method     bool Start()
# ToString                  Method     string ToString()
# WaitForExit               Method     void WaitForExit(), bool WaitForExit(int milliseconds), bool WaitForExit(timespan timeout)
# WaitForExitAsync          Method     System.Threading.Tasks.Task WaitForExitAsync(System.Threading.CancellationToken cancellationToken = default)    
# WaitForInputIdle          Method     bool WaitForInputIdle(), bool WaitForInputIdle(int milliseconds), bool WaitForInputIdle(timespan timeout)       

$n.CloseMainWindow()



# Create an array of names
$n = "fred", "betty", "wilma", "barney"
# Get the first element in the array
$n[0]
$n[0].ToUpper()

# Take $n and for each object take the value of $n and make it all uppercase
$n | ForEach-Object {$_.ToUpper()}
#Faster and easier way is to use
$n.ToUpper()

# Use SubString to get a part of the string
# For Each object in $n create a new string, using variable expension, use a subexpression to get the substring of the first object
# in the pipeline (Fred) and use substring with 0 as the first charcter with a length of 1, take that string and make it all 
# uppercase and append to that the substring of the current object from index 1 to get the rest of the string
#

$n | ForEach-Object {"$($_.Substring(0,1).ToUpper())$($_.Substring(1))"}