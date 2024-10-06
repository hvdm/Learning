# TO EXECUTE THIS YOU NEED TO RUN AS ADMINISTRATOR

# Get the current execution policy precedence
Get-ExecutionPolicy -List
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined     <-- Group policy 
#    UserPolicy       Undefined     <-- Group policy 
#       Process       Undefined
#   CurrentUser       Undefined
#  LocalMachine    RemoteSigned

# Change RemoteSigned into restricted
Set-ExecutionPolicy Restricted
# Output:
#         Scope ExecutionPolicy
#         ----- ---------------
# MachinePolicy       Undefined
#    UserPolicy       Undefined
#       Process       Undefined
#   CurrentUser       Undefined
#  LocalMachine      Restricted

# Open a new powershell window and try to run Test.ps1
#
# File Test.ps1 cannot be loaded because running scripts is disabled on this system. 
# For more information, see about_Execution_Policies at https://go.microsoft.com/fwlink/?LinkID=135170.

