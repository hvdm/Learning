##### TRY - CATCH (with error) #####
try
{
    Write-Host "TRY    : Download a file from the internet"
    $WebClient = New-Object System.Net.WebClient
    $WebClient.DownloadFile("http://google.com/JustAFile.doc", "c:\temp\JustAFile.doc")
}
# Catch a specific error instead of catching all the errors
catch [System.Net.WebException], [System.IO.IOException]
{
    # Catch the specific WebException and IOException errors
    "CATCH  : Unable to download JustAFile.doc from google.com"
}
catch 
{
    # if non of the above errors then catch the rest here
    "CATCH  : An error occured that could not be resolved"
}
