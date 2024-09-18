# Start a Job That Will Fail
# Get-Eventlog doesnt exist in PowerShell 7 and if it did a logname Nothing doesn't exists either
Start-Job -ScriptBlock { Get-EventLog -LogName Nothing } 
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 139    Job139          BackgroundJob   Running       True            localhost             Get-EventLog -LogName N…

# Wait a few seconds fot the job to finish
Start-Sleep -Seconds 2


# Get Failed Job and Child Job Details
Get-Job -IncludeChildJob
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 139    Job139          BackgroundJob   Failed        False           localhost             Get-EventLog -LogName N…
# 140    Job140                          Failed        False           localhost             Get-EventLog -LogName N…


# Get Failed ChildJob
Get-Job -IncludeChildJob -State Failed
# Output:
# Id     Name            PSJobTypeName   State         HasMoreData     Location             Command
# --     ----            ------------ - ---- - ---------- - --------             ------ -
# 139    Job139          BackgroundJob   Failed        False           localhost             Get-EventLog -LogName N…
# 140    Job140                          Failed        False           localhost             Get-EventLog -LogName N…


# Retreieve the Failed Job State Information
Get-Job -ID 139 | Select-Object -ExpandProperty JobStateInfo
# Output
# State Reason
# ----- ------
# Failed

Get-Job -ID 140 | Select-Object -ExpandProperty JobStateInfo
# Output
# State Reason
# ----- ------
# Failed System.Management.Automation.RemoteException: The term 'Get-EventLog' is not recognized as a name of a cmdlet, function, script file, or ex… 



# Retreieve the Reason from the Job State Information
Get-Job -ID 140 | `
    Select-Object -ExpandProperty JobStateInfo | `
    Select-Object -ExpandProperty Reason
# Output:
# SerializedRemoteException      : System.Management.Automation.CommandNotFoundException: The term 'Get-EventLog' is not recognized as a name of a cm
#                                  dlet, function, script file, or executable program.
#                                  Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
#                                     at System.Management.Automation.CommandDiscovery.LookupCommandInfo(String commandName, CommandTypes commandType 
#                                  s, SearchResolutionOptions searchResolutionOptions, CommandOrigin commandOrigin, ExecutionContext context)
#                                     at System.Management.Automation.CommandDiscovery.TryModuleAutoDiscovery(String commandName, ExecutionContext co 
#                                  ntext, String originalCommandName, CommandOrigin commandOrigin, SearchResolutionOptions searchResolutionOptions, C 
#                                  ommandTypes commandTypes, Exception& lastError)
#                                     at System.Management.Automation.CommandDiscovery.LookupCommandInfo(String commandName, CommandTypes commandType 
#                                  s, SearchResolutionOptions searchResolutionOptions, CommandOrigin commandOrigin, ExecutionContext context)
#                                     at System.Management.Automation.CommandDiscovery.LookupCommandProcessor(String commandName, CommandOrigin comma 
#                                  ndOrigin, Nullable`1 useLocalScope)
#                                     at System.Management.Automation.Runspaces.Command.CreateCommandProcessor(ExecutionContext executionContext, Boo 
#                                  lean addToHistory, CommandOrigin origin)
#                                     at System.Management.Automation.Runspaces.LocalPipeline.CreatePipelineProcessor()
#                                     at System.Management.Automation.Runspaces.LocalPipeline.InvokeHelper()
#                                     at System.Management.Automation.Runspaces.LocalPipeline.InvokeThreadProc()
# SerializedRemoteInvocationInfo : 
# ErrorRecord                    : The term 'Get-EventLog' is not recognized as a name of a cmdlet, function, script file, or executable program.     
#                                  Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# WasThrownFromThrowStatement    : False
# TargetSite                     : 
# Message                        : The term 'Get-EventLog' is not recognized as a name of a cmdlet, function, script file, or executable program.     
#                                  Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# Data                           : {}
# InnerException                 : 
# HelpLink                       : 
# Source                         : 
# HResult                        : -2146233087
# StackTrace                     : 



