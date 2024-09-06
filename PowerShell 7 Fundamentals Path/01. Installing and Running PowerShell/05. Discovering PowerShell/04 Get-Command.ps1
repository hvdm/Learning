# Get a list of all commands containing FILE (powershell & applications)
Get-Command *file*

# PowerShell uses a verb-noun pair for the names of cmdlets and for their derived . NET classes. 
# The verb part of the name identifies the action that the cmdlet performs. 
# The noun part of the name identifies the entity on which the action is performed.
Get-Command -noun FILE


