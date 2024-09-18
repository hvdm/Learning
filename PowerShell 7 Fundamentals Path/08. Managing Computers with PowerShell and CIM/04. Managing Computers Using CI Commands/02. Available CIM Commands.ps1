# This retrieves the CimInstances that are connected to a specific instance called the source instance
Get-CimAssociatedInstance

# This will retrieve a list of the CIM classes for a specific namespace.
Get-CimClass

# This one we can specify either a class name or a query to return the class that we're looking for.
Get-CimInstance

# The cmdlet gets all of the CIM sessions that are created to get information from PowerShell
Get-CimSession



# This will create an instance of the CIM class based on the class definition in either the local computer or the remote computer.
New-CimInstance

# Creates a brand new session
New-CimSession

# Creates an instance of a CimSessionOptions object, which you would then pass to a CimSession
New-CimSessionOption



# This will recreate saved objects based on the contents of an exported file if we've ran the Export command
Import-BinaryMiLog

# This effectively just invokes a method of a CIM class or a CimInstance using the key‑value name pairs that you specify within the arguments parameter.
Invoke-CimMethod



# Allows you to subscribe to indications using a class name or a query expression
Register-CimIndicationEvent

# This cmdlet will remove a CimInstance, you can specify the CimInstance to remove by using the object retrieved, or a query, or by using a different cmdlet
Remove-CimInstance

# You can also remove any CIM sessions
Remove-CimSession

# Set specific properties of the CimInstance by using the Set command
Set-CimInstance


# Retrieve All CIM Commands
Get-Command -Module CimCmdlets | Select-Object -Property Name
# Output:
# Name
# ----
# Export-BinaryMiLog
# Get-CimAssociatedInstance
# Get-CimClass
# Get-CimInstance
# Get-CimSession
# Import-BinaryMiLog
# Invoke-CimMethod
# New-CimInstance
# New-CimSession
# New-CimSessionOption
# Register-CimIndicationEvent
# Remove-CimInstance
# Remove-CimSession
# Set-CimInstance
