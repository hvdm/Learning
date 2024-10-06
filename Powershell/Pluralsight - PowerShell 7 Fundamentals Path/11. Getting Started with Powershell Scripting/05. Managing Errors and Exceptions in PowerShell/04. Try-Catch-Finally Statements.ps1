# # # # # TRY/CATCH/FINALLY Statements # # # # #
#
# TRY/CATCH
# Try a section of code and it throws an error, catch it

# TRY/FINALLY
# Don;t handle the error, simply execute the code if an error occurs

# TRY/CATCH/FINALLY
# Combination of both throwing errors and executing code



# # # # # Generating Exceptions # # # # #
# Generating an Error using THROW
Function New-Error
{
    Throw "This is an ERROR"
}

# Use TRY/CATCH to Capture the Error and Raise an Exception
try 
{
    New-Error    
}
catch 
{
    Write-Host -ForegroundColor Red "An Exception was generated"
}


# # # # # Using TRY/CATCH/FINALLY # # # # #
# A Message function
Function New-Message
{
    param ( [string]$Message )
    Write-Host -ForegroundColor Yellow "Func New-Message: $Message"
}

# Use TRY/FINALLY to Capture the Error and Continue Code Execution
try 
{
    New-Message ("TRY/FINALLY")
}
finally
{
    Write-Host -ForegroundColor Green "Continue Execution"
}

# Use TRY/CATCH/FINALLY to Capture the Error and Raise an Exception
try 
{
    New-Message ("TRY/CATCH/FINALLY")
}
catch 
{
    Write-Host -ForegroundColor Red "An Exception was generated"
}
finally 
{
    Write-Host -ForegroundColor Green "Continue Execution"
}



# # # # # Handling Typed Exceptions # # # # #
Function New-Error1
{
    Throw [System.IO.FileNotFoundException] "File Not Found"
}

$path = (Get-Location).Path

try 
{
    New-Error1 -path $path -ErrorAction Stop    
}
catch [System.IO.DirectoryNotFoundException], [System.IO.FileNotFoundException]
{
    Write-Host -ForegroundColor Red "The Path or File was not found: [$path]"
}

