# Select-Object
# Select for ex. 
# - The first or last X numbers of objects.
# - Skip Y number of Objects
# - CmdLet writes the original object to the pipeline

Get-ChildItem "$PSScriptRoot\" -File |              # Get the file items in the current folder where this script is
Select-Object -First 1                              # Select only the first item
# Output: 
# It shows only 1 file, but there are more
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# la---           31-8-2024    10:57           1872 02. Sorting and Grouping Objects.ps1

# Another way is to select a subset of object properties
Get-Process |                                       # Get a list of ALL processes
Select-Object -Property ID, Name, WorkingSet        # Select only a few properties

# Measure-Object
# Specify properties to measure
# Specify what type of measurement
# Writes a new object to the pipeline
Get-ChildItem "$PSScriptRoot\" -File |              # Get the file items in the current folder where this script is
Measure-Object -Property Length -Sum                # 
# Output:
# Count             : 2
# Average           : 
# Sum               : 2921
# Maximum           : 
# Minimum           : 
# StandardDeviation : 
# Property          : Length

