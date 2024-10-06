# Get the Current Execution Policy
Get-ExecutionPolicy -List
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser       Undefined
#  LocalMachine      Restricted


# Get the Current Execution Policy
Get-ExecutionPolicy
# Output:
# Restricted


# Set it to Unrestricted
Set-ExecutionPolicy Unrestricted
Get-ExecutionPolicy -List
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser       Undefined
#  LocalMachine    Unrestricted     <--------------


# Set it to Unrestricted
Set-ExecutionPolicy Restricted
Get-ExecutionPolicy -List
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser       Undefined
#  LocalMachine      Restricted     <--------------


# Set a scoped execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Get-ExecutionPolicy -List
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser    RemoteSigned     <--------------
#  LocalMachine      Restricted


# Run Test.ps1
.\Test.ps1
# Output:
# This is a test script.
# This can run because of precedence, CurrentUser wins from LocalMachine

# Set the CurrentUser to Restricted
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser
# Set the LocalMachine to Restricted
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine
# Output:
# Set-ExecutionPolicy: PowerShell updated your execution policy successfully, but the setting is overridden by a 
# policy defined at a more specific scope.  Due to the override, your shell will retain its current effective 
# execution policy of Restricted. Type "Get-ExecutionPolicy -List" to view your execution policy settings. 
# For more information please see "Get-Help Set-ExecutionPolicy".
Get-ExecutionPolicy -List
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser      Restricted     <--------------
#  LocalMachine    Unrestricted     <-------------- Error setting this one because of CurrentUser


# Run Test.ps1
.\Test.ps1
# Output:
# Test.ps1 cannot be loaded because running scripts is disabled on this system. For more information, 
# see about_Execution_Policies at https://go.microsoft.com/fwlink/?LinkID=135170.



# Run Powershell (process) Unrestricted
# Start:   pwsh.exe -ExecutionPolicy Unrestricted
Get-ExecutionPolicy -List
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process    Unrestricted     <--------------
#   CurrentUser      Restricted
#  LocalMachine    Unrestricted

# Run Test.ps1
.\Test.ps1
# Output:
# This is a test script.
# This can run because of precedence, Process wins from CurrentUser and LocalMachine

