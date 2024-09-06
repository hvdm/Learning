# Show all commands
Get-Command

# Get a list of commands containing "vegetable" from PSTeachingTools
Get-command *vegetable*

# Get a list of commands containing "services"
Get-command *services*

# Get a list of all Verbs
Get-Verb | FT

#VERB-NOUN
# PowerShell uses a verb-noun pair for the names of cmdlets and for their derived . NET classes. 
# The verb part of the name identifies the action that the cmdlet performs. 
# The noun part of the name identifies the entity on which the action is performed.

# Get a list of all stop commands (all STOP-commands)
Get-Command -Verb stop

# Get a list of a commands with veg*
Get-Command -Noun veg*

# Get a list of a commands with process in the name
Get-Command -Noun process

# Combining NOUN and VERB
Get-Command -Noun *share* -Verb Re*