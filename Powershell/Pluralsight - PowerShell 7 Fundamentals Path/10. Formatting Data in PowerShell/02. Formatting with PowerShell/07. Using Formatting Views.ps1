# Lets see what views are available for Process
Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1
# Output:
# TypeNames                    FormatViewDefinition
# ---------                    --------------------
# {System.Diagnostics.Process} {process, Priority, StartTime, process}



# Show the FormatViewDefinition
(Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1).FormatViewDefinition
# Output:
# Name      Control
# ----      ------ -
# process   System.Management.Automation.TableControl
# Priority  System.Management.Automation.TableControl
# StartTime System.Management.Automation.TableControl
# process   System.Management.Automation.WideControl



# The definitions are stored in the process.xml created earlier
Get-Content "$((Get-Location).Path)\process.xml"
# Output:
# <?xml version="1.0" encoding="utf-8"?>
# <Configuration>
#   <ViewDefinitions>
#     <View>
#       <Name>process</Name>
#       .....
#     </View>
#     <View>
#       <Name>Priority</Name>
#       .....
#     </View>
#     <View>
#       <Name>StartTime</Name>
#       .....
#     </View>
#     <View>
#       <Name>process</Name>
#       .....
#     </View>
#   </ViewDefinitions>
# </Configuration>


# Run Get-Process and use a view directlyu
Get-Process | Format-Table -View StartTime
# Output:
# StartTime.ToShortDateString(): 25-9-2024

# ProcessName                  Id WorkingSet64
# ---------- - -- ------------
# AggregatorHost            12636      4841472
# ai                        27424     17776640
# AppHelperCap               3184     10534912
# ApplicationFrameHost      20664     41353216
# ArcControlService          6424     13316096