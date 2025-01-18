##### TRY - CATCH with THROW #####
$a = 2                                          # Set a to 1 or 2
try
{
    if ($a -eq 1)                               # Check if a = 1
    {
        throw 1                                 # if so, throw an error
    }
    elseif ($a -eq 2)                           # if not, check if a = 2
    {
        throw 2                                 # if so, throw an error
    }
}
catch 
{
    # Catch the error
    if ($_.Exception.Message -eq 1)             # Check if the error message = 1
    {
        "CATCH  : Error is 1"                   # if so, print the error 1
    }
    elseif ($_.Exception.Message -eq 2)         # Check if the error message = 2
    {
        "CATCH  : Error is 2"                   # if so, print the error 2
    }
    else
    {
        $_.Exception.Message
    }
}
try
{
    
}
finally
{
    Write-Host "Code is finished"
}
