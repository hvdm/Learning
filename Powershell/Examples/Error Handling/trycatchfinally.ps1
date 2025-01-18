##### TRY - CATCH - FINALLY #####
try
{
    Write-Host "TRY    : Let's create an error"

    # Try something here that (might) cause an error
    # for example: divide 1 by 0
    1 / 0
}
catch
{
    # Catch the error
    Write-Host "CATCH  : An error occured"
}
finally
{
    # Do some things after the error occured, like cleaning up things
    Write-Host "FINALLY: Cleaning up things"
}
