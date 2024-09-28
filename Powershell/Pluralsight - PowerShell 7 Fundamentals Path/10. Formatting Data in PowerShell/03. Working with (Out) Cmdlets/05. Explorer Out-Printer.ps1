# Get the help for the Out-Printer cmdlet
Get-Help Out-Printer
# Output
# NAME
#     Out-Printer

# SYNOPSIS
#     Sends output to a printer.


# SYNTAX
#     Out-Printer [[-Name] <System.String>] [-InputObject <System.Management.Automation.PSObject>] [<CommonParameters>]


# DESCRIPTION
#     > This cmdlet is only available on the Windows platform. The `Out-Printer` cmdlet sends output to the default printer or to an alternate printer, if one 
#      is specified. Since the cmdlet doesn't have any way to configure the print job, the resulting print job uses the default settings defined for the print 
#     er.

#     > [!NOTE] > This cmdlet was reintroduced in PowerShell 7. This cmdlet is only available on Windows systems > that support the Windows Desktop.



# Get a list of printers
Get-Printer
# Output:
# Name                           ComputerName    Type         DriverName                PortName        Shared   Published  DeviceType     
# ----                           ------------    ----         ----------                --------        ------   ---------  ----------     
# OneNote (Desktop)                              Local        Send to Microsoft OneNot… nul:            False    False      Print
# Microsoft XPS Document Writer                  Local        Microsoft XPS Document W… PORTPROMPT:     False    False      Print
# Microsoft Print to PDF                         Local        Microsoft Print To PDF    PORTPROMPT:     False    False      Print
# Fax                                            Local        Microsoft Shared Fax Dri… SHRFAX:         False    False      Print


# Get a list of processes started with p*
Get-Process p* | Out-Printer -Name "Microsoft Print to PDF"
# This will popup ans ask you where to save the pdf
