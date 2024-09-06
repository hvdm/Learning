# Get info about the Powershell Version
$PSVersionTable

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available
Get-Command | Format-Table

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available by CommandType
Get-Command -CommandType Cmdlet, Function | Format-Table

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available with disk in the name
Get-Command -Name *disk* | Format-Table

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available with disk in the name, limit it by Cmdlet and Functions
Get-Command -Name *disk* -CommandType Cmdlet, Function | Format-Table

# PowerShell uses a verb-noun pair for the names of cmdlets and for their derived . NET classes. 
# The verb part of the name identifies the action that the cmdlet performs. 
# The noun part of the name identifies the entity on which the action is performed

# VERB-NOUN
# Action-Entity
# Get-Service

# Get a list of all Verbs
Get-Verb

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available with mount as verb
Get-Command -Verb mount | Format-Table

Write-host "--------------------------------------------------------------------------------"

# Get all the commands available with diskimage as noun
Get-Command -Noun DiskImage | Format-Table

Write-host "--------------------------------------------------------------------------------"
