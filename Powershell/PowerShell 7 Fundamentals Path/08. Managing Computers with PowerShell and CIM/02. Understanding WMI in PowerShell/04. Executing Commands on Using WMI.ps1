# 
# WMI Command Structure

# Command        Class        Remote Machine        Query
# Get-WmiObject -Class xxxxx -Computername Server01 "Select * from  Win32_Service Where Name='WinRM'"

# Retrieve all processes on the local computer
Get-WmiObject -Class Win32_Process

# Retrieve all processes on a remote computer
Get-WmiObject -Class Win32_Process -ComputerName Server01

Get-WmiObject -Query "select * from win32_service where name='WinRM'"
