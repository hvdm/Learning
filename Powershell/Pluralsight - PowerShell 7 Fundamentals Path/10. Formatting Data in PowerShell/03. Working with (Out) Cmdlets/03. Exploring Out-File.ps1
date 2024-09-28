# Get the help for the Out-File cmdlet
Get-Help Out-File
# NAME
#     Out-File

# SYNOPSIS
#     Sends output to a file.


# SYNTAX
#     Out-File [-FilePath] <System.String> [[-Encoding] {ASCII | BigEndianUnicode | BigEndianUTF32 | OEM | Unicode | UTF7 | UTF8 | UTF8BOM | UTF8NoBOM | UTF32 
#     }] [-Append] [-Force] [-InputObject <System.Management.Automation.PSObject>] [-NoClobber] [-NoNewline] [-Width <System.Int32>] [-Confirm] [-WhatIf] [<Co 
#     mmonParameters>]

#     Out-File [[-Encoding] {ASCII | BigEndianUnicode | BigEndianUTF32 | OEM | Unicode | UTF7 | UTF8 | UTF8BOM | UTF8NoBOM | UTF32}] [-Append] [-Force] [-Inpu 
#     tObject <System.Management.Automation.PSObject>] -LiteralPath <System.String> [-NoClobber] [-NoNewline] [-Width <System.Int32>] [-Confirm] [-WhatIf] [<C 
#     ommonParameters>]


# DESCRIPTION
#     The `Out-File` cmdlet sends output to a file. It implicitly uses PowerShell's formatting system to write to the file. The file receives the same display 
#      representation as the terminal. This means that the output may not be ideal for programmatic processing unless all input objects are strings. When you  
#     need to specify parameters for the output, use `Out-File` rather than the redirection operator (`>`). For more information about redirection, see about_ 
#     Redirection (../Microsoft.PowerShell.Core/About/about_Redirection.md).



# Get a list of processes started with p*
Get-Process p* | Out-File -FilePath "$((Get-Location).Path)\process.txt"
# Output:
#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      27    57,61      65,21       0,00   13048   0 PASAgent
#     112    74,02     141,92      14,14   17012   1 PhoneExperienceHost
#      40    64,36      54,53      42,59   25340   1 powershell
#     188   309,35     419,32     261,33   24620   1 pwsh



# The output is just text and no objects anymore, you can't import it to make it an object again
Get-Content "$((Get-Location).Path)\process.txt"
# Output:
#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      27    57,61      65,21       0,00   13048   0 PASAgent
#     112    74,02     141,92      14,14   17012   1 PhoneExperienceHost
#      40    64,36      54,53      42,59   25340   1 powershell
#     188   309,35     419,32     261,33   24620   1 pwsh



# Get a list of processes started with p*, format it to a list and output it to a file, file will be overwritten
Get-Process p* | format-list | Out-File -FilePath "$((Get-Location).Path)\process.txt"


# Output:
# Id      : 13048
# Handles : 575
# CPU     : 
# Set-Item      : 0
# Name    : PASAgent

# Id      : 17012
# Handles : 1425
# CPU     : 14, 140625
# Set-Item      : 1
# Name    : PhoneExperienceHost

# Id      : 25340
# Handles : 514
# CPU     : 42, 59375
# Set-Item      : 1
# Name    : powershell

# Id      : 24620
# Handles : 993
# CPU     : 263, 0625
# Set-Item      : 1
# Name    : pwsh



# Get a list of processes started with p*, format it to a list and output it to a file, don't overwrite file with NoClobber
Get-Process p* | format-list | Out-File -FilePath "$((Get-Location).Path)\process.txt" -NoClobber
# Output:
# Out-File: The file '.\Powershell\Pluralsight - PowerShell 7 Fundamentals Path\10. Formatting Data in PowerShell\03. Working with (Out) Cmdlets\process.txt' already exists.


# Get a list of processes started with p*, output it to a file, append to existing file
Get-Process p* | Out-File -FilePath "$((Get-Location).Path)\process.txt" -Append


# Get a list of processes started with p*, output it to a file, skip new lines
Get-Process p* | Out-File -FilePath "$((Get-Location).Path)\process.txt" -NoNewline


# Get a list of processes started with p*, output it to a file, with specified line width
Get-Process p* | Out-File -FilePath "$((Get-Location).Path)\process.txt" -Width 20
# Output gets truncated: 
#  NPM(K)    PM(M) WS(
#                   M)
#  ------    ----- ---
#      27    57,64 …22
#     112    74,03 …23
#      40    64,36 …38
#     187   306,95 …99

