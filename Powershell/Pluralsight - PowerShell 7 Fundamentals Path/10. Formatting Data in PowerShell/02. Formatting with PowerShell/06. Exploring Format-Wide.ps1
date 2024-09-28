# Get a list of processes and output it to wide
Get-Process | Format-Wide
# Output:
# ai                                                                             AppHelperCap
# ApplicationFrameHost                                                           ArcControlService
# audiodg                                                                        CalculatorApp
# CalculatorApp                                                                  CcmExec

# See the view definitions in process.xml
Get-Content "$((Get-Location).Path)\process.xml"
# The view is based on ProcessName
# Output:
# <View>
#   <Name>process</Name>
#   <ViewSelectedBy>
#     <TypeName>System.Diagnostics.Process</TypeName>
#   </ViewSelectedBy>
#   <WideControl>
#     <WideEntries>
#       <WideEntry>
#         <WideItem>
#           <PropertyName>ProcessName</PropertyName>    <----------------------
#         </WideItem>
#       </WideEntry>
#     </WideEntries>
#   </WideControl>
# </View>


# Use Format-Wide with autosize
Get-Process | Format-Wide -AutoSize
# Output:
# ai                                      AppHelperCap                           ApplicationFrameHost                   ArcControlService
# audiodg                                 CalculatorApp                          CalculatorApp                          CcmExec
# chrome                                  chrome                                 chrome                                 chrome
# chrome                                  chrome                                 chrome                                 chrome


# AutoSize used 4 columns
# When set to 5 things will get cutoff at the end
Get-Process | Format-Wide -Column 5
# Output:
# ApplicationFrameHost            ArcControlService               audiodg                        CalculatorApp                  CalculatorA..
# CcmExec                         chrome                          chrome                         chrome                         chrome


# AutoSize used 4 columns
# When set to 20 almost everything get cutoff at the end
Get-Process | Format-Wide -Column 20
# Output:
# agent_… Aggreg… ai      AppHel… Applic… ArcCon… audiodg Calcul… Calcul… CcmExec chrome  chrome  chrome  chrome  chrome  chrome  chrome  chromechrome  chrome
# chrome  chrome  chrome  chrome  chrome  chrome  chrome  chrome  chrome  chrome  clicks… cmd     cmd     CmRcSe… Code    Code    Code    Code   Code   Code   
# Code    Code    Code    Code    CompPk… conhost conhost conhost conhost conhost conhost conhost conhost conhost conhost csrss   csrss   ctfmon dasHo… dasHo… 


# Selecting a different property
Get-Process | Format-Wide -Property Id
# Output:
# 232                                                                            18636
# 18912                                                                          18928
# 8212                                                                           20696
# 6056                                                                           12636
# .......

# Lots of white space

# Selecting a different property with 4 columns
Get-Process | Format-Wide -Property Id -Column 4
# Output:
# 232                                     18636                                  18912                                  18928
# 8212                                    20696                                  6056                                   12636
# 27424                                   3184                                   20664                                  6424


Get-Service | Sort-Object -Property Status | Format-Wide -GroupBy Status
Output:
# Status: Stopped

# AarSvc_5217e5                                                                  PNRPAutoReg   
# PNRPsvc                                                                        PrintNotify   


# Status: Running

# TabletInputService                                                             cplspcon
# UserManager                                                                    UserDataSvc_5217e5


