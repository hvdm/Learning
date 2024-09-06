# Have the following commands
# Must run-as administrator
Get-service BITS, Spooler
Set-Service BITS, Spooler -StartupType Manual

# This can be written as 
# The | (pipeline) writes one command from left to right
Get-service BITS, Spooler | Set-Service -StartupType Manual

# Set-Service doesnt write anything to the console, if you want that you need it to PassThru
Get-service BITS, Spooler | Set-Service -StartupType Manual -PassThru





