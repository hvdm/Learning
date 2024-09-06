# Show 1kb in bytes
1kb
# Show 3kb in bytes
3kb
# Show 1mb in bytes
1mb
# Show 1gb in bytes
1gb
# Show 1tb in bytes
1tb
# Show 459870234/1mb -> returns a floatn
459870234/1mb
# Show 54598225634/1gb as a int32
54598225634/1gb -as [int32]

#### Using the MATH class ####
[math].Getmethods() | Group-Object -Property Name

# The power method
[math]::pow.OverloadDefinitions
# This returns:  static double Pow(double x, double y)
# static
# double -> return value with a decimal point
# pow (double x, double y)
[math]::pow(2,3) # returns 8 (2x2x2)

# Square Root of 144
[math]::sqrt(144)

# Rounding methods
[math]::round.OverloadDefinitions
# static decimal Round(decimal d)
# static decimal Round(decimal d, int decimals)
# static decimal Round(decimal d, System.MidpointRounding mode)
# static decimal Round(decimal d, int decimals, System.MidpointRounding mode)
# static double Round(double a)
# static double Round(double value, int digits)
# static double Round(double value, System.MidpointRounding mode)
# static double Round(double value, int digits, System.MidpointRounding mode)

# Round 345.6789 with 2 decimals
$i = 345.6789
[math]::round($i,2)

# Get all files in a folder
$m = Get-ChildItem c:\temp -Recurse | Measure-Object -Property Length -sum
# Get Size of all files in bytes
$m.Sum
# Get Size of all files in kilobytes
$m.Sum / 1kb
# Get Size of all files in megabytes
$m.Sum / 1mb
# Get Size of all files in kilobytes as an int32
$m.Sum / 1kb -as [int32]
# Round it with 4 decimal places
[math]::Round($m.Sum / 1mb,4)

# Create a hash table $get
$get = @{
    Path = "c:\temp"
    File = $true
    Recurse = $true
    exclude = "*.exe", "*.dll", "*.appx"
}


Get-ChildItem @get |                            # Use Get-ChildItem platting the hashtable
Where-Object {$_.Extension} |                   # Filter out all files WITH extension, if true it will get written to the pipeline
Group-Object -Property Extension -AsHashTable | # Group them by extension as a hashtable
Tee-Object -Variable g |                        # See the results AND add them to $g
Format-Table                                    # output the result as a table instead of a list

# Lets enumerate the hashtable
$g.GetEnumerator() | Select-Object -Property @{ Name="FileType"; Expression={$_.Name}},
                                             @{ Name="Count"; Expression={$_.value.Count}},
                                             @{ Name="SizeKB"; Expression={$m = $_.value | Measure-Object -Property length -Sum
                                                    [math]::Round($m.Sum / 1kb,2) }} | 
                                                    Sort-Object -Property SizeKB -Descending |
                                                    Select-Object -First 10

# 
Get-CimInstance Win32_OperatingSystem -OutVariable os | 
Select-Object Caption, TotalVisibleMemorySize, FreePhysicalMemory

$os | Select-Object Caption, 
@{Name="TotalMemGB"; Expression={ ($_.TotalVisibleMemorySize/1mb) -as [int]}},
@{Name="FreeMemGB";  Expression={ [math]::Round($_.FreePhysicalMemory/1mb,2)}}
