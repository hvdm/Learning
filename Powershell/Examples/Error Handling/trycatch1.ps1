##### TRY - CATCH (without error)#####
try
{
    function get-directorycount
    {
        param ($directory)
    
        # Get a list of directories found
        $dirs = Get-ChildItem $directory -Directory

        # Count the directories and write it
        Write-Host -ForegroundColor Black -BackgroundColor Yellow "Directory count: $($dirs.count)"
    }
    
    Write-Host "TRY    : Run a directory count "
    get-directorycount "c:\"

}
catch
{
    # Catch the error
    Write-Host "CATCH  : An error occured"
    Write-Host $_.Exception.Message -ForegroundColor Red
}
