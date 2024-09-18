Clear-Host                                      # Clear the screen

1..10 |                                         # Take the numbers 1 to 10
ForEach-Object { $_ * 2}                        # for each number "$_" multiply it with 2

Write-Host "==================================="# Seperator

1..10|                                          # Take the numbers 1 to 10
ForEach-Object { $_ * 2} |                      # for each number "$_" multiply it with 2
Measure-Object -AllStats |                      # Measure the object and get all the statistics    
Select-Object -Property * -ExcludeProperty Property    # Select all the properties except Property
# Output:
# Count             : 10
# Average           : 11
# Sum               : 110
# Maximum           : 20
# Minimum           : 2
# StandardDeviation : 6,05530070819498

Write-Host "==================================="# Seperator

# The % is an alias for ForEach
2,4,7,8,10,39 | % {$_ / 2}

Write-Host "==================================="# Seperator

# Now use the Get-Vegtable Command
Get-Vegetable |                                 # Get all the veggies
Get-Member *peel* |                             # Get the method "Peel", the method has no parameters
Format-Table                                    # Format it
# Output:
# TypeName: PSTeachingTools.PSVegetable

# Name     MemberType Definition
# ----     ---------- ----------
# Peel     Method     void Peel()
# IsPeeled Property   bool IsPeeled {get;set;}

Write-Host "==================================="# Seperator

Get-Vegetable |                                 # Get all the veggies
Select-Object -Property Count, Name, IsPeeled   # Get the Count, Name and IsPeeled property
# Output:
# Count Name            IsPeeled
# ----- ----            --------
#    12 corn               False
#     4 tomato             False
#    11 cucumber           False
#    10 carrot             False
#    13 radish             False
#    14 peas               False
#    12 turnip             False
#    18 russet potato      False
#    15 broccoli           False
#     7 zucchini           False
#     4 spinach            False
#     7 cauliflower        False
#    17 habanero pepper    False
#    16 Anaheim pepper     False
#    19 red bell pepper    False
#     6 eggplant           False
#     2 endive             False

Write-Host "==================================="# Seperator

Get-Vegetable Carrot |                          # Get all the Carrots
ForEach-Object {$_.Peel()}                      # For Each Carrot call the Peel method

Write-Host "==================================="# Seperator

Get-Vegetable |                                 # Get all the veggies
Select-Object -Property Count, Name, IsPeeled   # Get the Count, Name and IsPeeled property
# Output:
# Count Name            IsPeeled
# ----- ----            --------
#    12 corn               False
#     4 tomato             False
#    11 cucumber           False
#    10 carrot              True
#    13 radish             False
#    14 peas               False
#    12 turnip             False
#    18 russet potato      False
#    15 broccoli           False
#     7 zucchini           False
#     4 spinach            False
#     7 cauliflower        False
#    17 habanero pepper    False
#    16 Anaheim pepper     False
#    19 red bell pepper    False
#     6 eggplant           False
#     2 endive             False

Write-Host "==================================="# Seperator

# Create two files
Get-Date | Out-File "$PSScriptRoot\test1.txt"
Get-Date | Out-File "$PSScriptRoot\test2.txt"

dir "$PSScriptRoot\" |                          # Get the folder content where script is located
Select-Object Name, Attributes                  # Select Name and Attributes property
# Output:
# Name            Attributes
# ----            ----------
# test1.txt       Archive
# test2.txt       Archive

Write-Host "==================================="# Seperator

Get-Item "$PSScriptRoot\test1.txt" |            # Get the item
Get-Member encrypt                              # Show the method called encrypt
# Output:
# TypeName: System.IO.FileInfo

# Name    MemberType Definition
# ----    ---------- ----------
# Encrypt Method     void Encrypt()

dir "$PSScriptRoot\test*.txt" |                 # Get the two test files
foreach {$_.Encrypt()}                          # For each file in the pipeline run the encrypt method

dir "$PSScriptRoot\" |                          # Get the folder content where script is located
Select-Object Name, Attributes                  # Select Name and Attributes property
# Output:
# Name                    Attributes
# ----                    ----------
# test1.txt       Archive, Encrypted
# test2.txt       Archive, Encrypted

# Help Get-Volume -Parameter cimsession
# Output:
# -CimSession [<CimSession[]>]
#     Runs the cmdlet in a remote session or on a remote computer. Enter a computer name or a session object, 
#     such as the output of a New-CimSession or Get-CimSession cmdlet. The default is the current session on the local computer.

#     Required?                    false
#     Position?                    named
#     Default value                none
#     Accept pipeline input?       false
#     Accept wildcard characters?  false

Write-Host "==================================="# Seperator

# Get a list of servers from file
Get-Content "$PSScriptRoot\servers.txt"

#### Get-Content "$PSScriptRoot\servers.txt" | Get-Volume
# This gives an error:
# The input object cannot be bound to any parameters for the command either because the command does not take pipeline 
# input or the input and its properties do not match any of the parameters that take pipeline input.

# This is because this paramater doesnt allow pipleline input 
# From: Help Get-Volume -Parameter cimsession
#     Accept pipeline input?       false

Write-Host "==================================="# Seperator

$c = Get-Content "$PSScriptRoot\servers.txt" | foreach {Get-Volume -drive c -CimSession $_}

# Output:
# DriveLetter FriendlyName FileSystemType DriveType HealthStatus OperationalStatus SizeRemaining      Size PSComputerName
# ----------- ------------ -------------- --------- ------------ ----------------- -------------      ---- --------------
# C           System       NTFS           Fixed     Healthy      OK                      92.3 GB 296.43 GB localhost

#
$c |                                            # Pipe the content of variable $c
Select-Object PSComputerName, DriveLetter, Size* # Select a few properties
# Output:
# PSComputerName DriveLetter         Size SizeRemaining
# -------------- -----------         ---- -------------
# localhost                C 318294192128   99094282240

#
# Get-ChildItem C:\Windows -File |                # Get all the files in the windows folder
# Group-Object -Property Extension |              # Group all the files by extension
# Select-Object Name, Count,
# @{Name="Size"; Expression=
#     { $_.Group | 
#       Measure-Object -Property Length -Sum |
#       Select-Object -ExpandProperty Sum
#     }
#  } |
# Sort-Object -Property Size -Descending |
# Select-Object -First 5

Write-Host "==================================="# Seperator

Get-ChildItem C:\Windows -File | Group-Object -Property Extension | Select-Object Name, Count,@{Name="Size"; Expression={ $_.Group |Measure-Object -Property Length -Sum |Select-Object -ExpandProperty Sum}} | Sort-Object -Property Size -Descending | Select-Object -First 5



