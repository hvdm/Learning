##### TRY - CATCH with THROW #####
try
{
    Get-Content "C:\TEMP\NonExistentFile.txt"

    <#
    This throws the following error

    Get-Content : Cannot find path 'C:\TEMP\NonExistentFile.txt' because it does not exist.
    At Q:\Learning\Powershell\Examples\Error Handling\erroraction.ps1:5 char:5
    + Get-Content "C:\TEMP\NonExistentFile.txt"
    + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\TEMP\NonExistentFile.txt:String) [Get-Content], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound, Microsoft.PowerShell.Commands.GetContentCommand
    #>

    # Use -ErrorAction instead or use the global $ErrorActionPreference = "stop"
    #
    # SilentlyContinue — Don't display an error message continue to execute subsequent commands.
    # Continue — Display any error message and attempt to continue execution of subsequence commands.
    # Inquire — Prompts the user whether to continue or terminate the action
    # Stop — Terminate the action with error.

    # Using Stop will stop hold at "No Go"
    Get-Content "C:\TEMP\NonExistentFile.txt" -ErrorAction Stop
}
catch
{
    Write-Host "No Go Exception"
}
finally
{
    Write-Host "Code is finished"
}
