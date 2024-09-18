# Make sure PSTeachingTools is installed

# Run Get-Vegetable and get a result
Get-Vegetable

# What type of object is it
Get-Vegetable | Get-Member | Format-Table
# output
# TypeName: PSTeachingTools.PSVegetable

# Name        MemberType Definition
# ----        ---------- ----------
# Equals      Method     bool Equals(System.Object obj)
# GetHashCode Method     int GetHashCode()
# GetType     Method     type GetType()
# Peel        Method     void Peel()
# Prepare     Method     void Prepare(PSTeachingTools.VegStatus State)
# ToString    Method     string ToString()
#
# Color       Property   PSTeachingTools.VegColor Color {get;}
# CookedState Property   PSTeachingTools.VegStatus CookedState {get;set;}
# Count       Property   int Count {get;set;}
# IsPeeled    Property   bool IsPeeled {get;set;}
# IsRoot      Property   bool IsRoot {get;}
# Name        Property   string Name {get;}
# UPC         Property   int UPC {get;}

# Only showing the properties
Get-Vegetable | Get-Member -MemberType Properties
# Output:
# TypeName: PSTeachingTools.PSVegetable

# Name        MemberType Definition
# ----        ---------- ----------
# Color       Property   PSTeachingTools.VegColor Color {get;}
# CookedState Property   PSTeachingTools.VegStatus CookedState {get;set;}
# Count       Property   int Count {get;set;}
# IsPeeled    Property   bool IsPeeled {get;set;}
# IsRoot      Property   bool IsRoot {get;}
# Name        Property   string Name {get;}
# UPC         Property   int UPC {get;}

Get-Vegetable corn | Format-Table
# Output:
# UPC  Count Name State Color
# ---  ----- ---- ----- -----
# 4078    12 corn Raw   yellow

# Only showing the properties
Get-Vegetable | Get-Member -MemberType Methods
# Output:
# TypeName: PSTeachingTools.PSVegetable

# Name        MemberType Definition
# ----        ---------- ----------
# Equals      Method     bool Equals(System.Object obj)
# GetHashCode Method     int GetHashCode()
# GetType     Method     type GetType()
# Peel        Method     void Peel()
# Prepare     Method     void Prepare(PSTeachingTools.VegStatus State)
# ToString    Method     string ToString()

# The -WhatIf tells you what it should have done
Set-Vegetable -name corn -CookingState Grilled -WhatIf
# Output: What if: Performing the operation "Set-Vegetable" on target "corn".

# You can't see if it has changed, no output
Set-Vegetable -name corn -CookingState Grilled

# Use -PassThru to get output
Set-Vegetable -name corn -CookingState Grilled -Passthru | Format-Table

# BEFORE:
# UPC  Count Name State Color
# ---  ----- ---- ----- -----
# 4078    12 corn Raw   yellow

# AFTER:
# UPC  Count Name State   Color
# ---  ----- ---- -----   -----
# 4078    12 corn Grilled yellow

#  Get the contents of a file
Get-Content "$PSScriptRoot\services.txt" |  # Read the file with service names
Get-Service |                               # Pipe it to Get-Service
Restart-Service -PassThru |                 # Pipe that to Restart-Service and Passthrough it to the console
Out-File "$PSScriptRoot\restart.txt"        # Write the output of Restart=Service to a file






