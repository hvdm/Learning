# Get the help for the Out-Null cmdlet
Get-Help Out-GridView
# Output
NAME
#     Out-GridView

# SYNOPSIS
#     Sends output to an interactive table in a separate window.


# SYNTAX
#     Out-GridView [-InputObject <System.Management.Automation.PSObject>] [-OutputMode {None | Single | Multiple}] [-Title <System.String>] [<CommonParameters 
#     >]

#     Out-GridView [-InputObject <System.Management.Automation.PSObject>] [-PassThru] [-Title <System.String>] [<CommonParameters>]

#     Out-GridView [-InputObject <System.Management.Automation.PSObject>] [-Title <System.String>] [-Wait] [<CommonParameters>]


# DESCRIPTION
#     > This cmdlet is only available on the Windows platform. The `Out-GridView` cmdlet sends the output from a command to a grid view window where the outpu 
#     t is displayed in an interactive table.

#     Because this cmdlet requires a user interface, it does not work on Windows Server Core or Windows Nano Server.

#     You can use the following features of the table to examine your data:

#     - Hide, show, and reorder columns

#     - Sort rows

#     - Quick filter

#     - Add criteria filter

#     - Copy and paste


#     For full instructions, see the Notes (#notes)section of this article.
#     > [!NOTE] > This cmdlet was reintroduced in PowerShell 7. This cmdlet is only available on Windows systems > that support the Windows Desktop. For a cro 
#     ss-platform version of this cmdlet, see the > ConsoleGuiTools (https://www.powershellgallery.com/packages/Microsoft.PowerShell.ConsoleGuiTools)> module  
#     in the PowerShell Gallery


# Get the process and output it to a GridView, a popup will open
Get-Process | Out-GridView


# Get the process, select a few properties and output it to a GridView, a popup will open
Get-Process | Select-Object Name, Id | Out-GridView


# Get the process, select a all properties and output it to a GridView, a popup will open
Get-Process | Select-Object * | Out-GridView


# Get the process, select a few properties and output it to a GridView with a custom Title, a popup will open
Get-Process | Select-Object Name, Id | Out-GridView -Title MyData -PassThru



# Get the process, select a few properties and output it to a GridView with a custom Title and export it, a popup will open
Get-Process | Select-Object Name, Id | Out-GridView -Title MyData -PassThru | Export-Csv "$((Get-Location).Path)\process.csv" -NoTypeInformation
# it outputs with an OK and CANCEL button.
# Select a few items and click on OK, that will be exported
# Output of CSV:
# "Name","Id"
# "agent_ovpnconnect_1706702535874","6056"
# "AggregatorHost","12636"
# "ai","27424"
# "AppHelperCap","3184"
# "ApplicationFrameHost","20664"
# "ArcControlService","6424"
# "audiodg","34984"





