# Get the BITS Service and convert the output to HTML
Get-Service BITS | ConvertTo-Html
# Output:
# <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
# <html xmlns="http://www.w3.org/1999/xhtml">
# <head>
# <title>HTML TABLE</title>
# </head><body>
# <table>
# <colgroup><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/><col/></colgroup>
# <tr><th>UserName</th><th>Description</th><th>DelayedAutoStart</th><th>BinaryPathName</th><th>StartupType</th><th>Name</th><th>RequiredServices</th><th>CanPauseAndContinue</th><th>CanShutdown</th><th>CanStop</th><th>DisplayName</th><th>DependentServices</th><th>MachineName</th><th>ServiceName</th><th>ServicesDependedOn</th><th>StartType</th><th>ServiceHandle</th><th>Status</th><th>ServiceType</th><th>Site</th><th>Container</th></tr>
# <tr><td>LocalSystem</td><td>Transfers files in the background using idle network bandwidth. If the service is disabled, then any applications that depend on BITS, such as Windows Update or MSN Explorer, will be unable to automatically download programs and other information.</td><td>True</td><td>C:\WINDOWS\System32\svchost.exe -k netsvcs -p</td><td>Manual</td><td>BITS</td><td>System.ServiceProcess.ServiceController[]</td><td>False</td><td>False</td><td>False</td><td>Background Intelligent Transfer Service</td><td>System.ServiceProcess.ServiceController[]</td><td>.</td><td>BITS</td><td>System.ServiceProcess.ServiceController[]</td><td>Manual</td><td></td><td>Stopped</td><td>Win32ShareProcess</td><td></td><td></td></tr>
# </table>
# </body></html>


# Get the BITS Service and convert the output to HTML and save it to a file
Get-Service BITS | ConvertTo-Html | out-file "$((Get-Location).Path)\bits.html"
# Open the file
Invoke-Item "$((Get-Location).Path)\bits.html"


# Get the BITS Service and convert the output to HTML and save it to a file
Get-Service BITS | ConvertTo-Html -Property Name, CanShutdown, StartType -as List
# Output:
# <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
# <html xmlns="http://www.w3.org/1999/xhtml">
# <head>
# <title>HTML TABLE</title>
# </head><body>
# <table>
# <tr><td>Name:</td><td>BITS</td></tr>
# <tr><td>CanShutdown:</td><td>False</td></tr>
# <tr><td>StartType:</td><td>Manual</td></tr>
# </table>
# </body></html>


# Get the BITS Service and convert the output to HTML and save it to a file
Get-Service BITS | ConvertTo-Html -Property Name, CanShutdown, StartType -as List -Title "My Fancy Report" | Out-File "$((Get-Location).Path)\bits1.html"
# Open the file
Invoke-Item "$((Get-Location).Path)\bits1.html"
