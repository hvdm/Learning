# Get the alias name
Get-Alias -Definition Format-Table
# Output:
# CommandType     Name                                               Version    Source
# ---------- - ----                                               ------ - ------
# Get-Alias           ft -> Format-Table


# The default output of Get-Date is customized by the formatting system
Get-Date
# Output:
# donderdag 26 september 2024 15:32:07


# Force the output to a table
Get-Date | Format-Table
# Output:
# DisplayHint Date               Day DayOfWeek DayOfYear Hour  Kind Millisecond Microsecond Nanosecond
# ---------- - ----               -- - -------- - -------- - ----  ---- ---------- - ---------- - ----------
# DateTime 26-9-2024 00:00:00  26  Thursday       270   15 Local         845         782        300


# A default command with an output to a table
Get-Process
Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    ---- - ---- - ------      --  -- ---------- -
# 5     1, 19       4, 65       0, 00   12636   0 AggregatorHost
# 57    37, 25      66, 36       0, 00    9104   0 CcmExec
# 27    37, 45      71, 79       1, 61     752   1 chrome
# 48   147, 22     195, 47      22, 30    4296   1 chrome
# 77   561, 55     411, 46   1.518, 95    6992   1 chrome


# Use get-process to get the processes and format it to a table using groupby, needs sort-object first before grouping
Get-Process |
Sort-Object -Property ProcessName |
Format-Table -GroupBy ProcessName
# Output:
#    ProcessName: AggregatorHost

#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#       5     1,19       4,67       0,00   12636   0 AggregatorHost

#    ProcessName: ai

#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      17    22,15      18,09       3,20   26664   1 ai
#      16    22,64      17,42       3,69   27424   1 ai

#     ProcessName: AppHelperCap

#  NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
#  ------    -----      -----     ------      --  -- -----------
#      13     3,16       9,99       0,00    3184   0 AppHelperCap
# .......



# Get 5 events from the system log
Get-WinEvent -LogName system -MaxEvents 5
# Output:
# ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated                     Id LevelDisplayName Message
# ---------- - -- ---------------- ------ -
# 27 - 9 - 2024 09:42:14            1501 Information      The Group Policy settings for the user were processed successfully. There were no changes detected sinc… 

# ProviderName: Microsoft-Windows-DNS-Client

# TimeCreated                     Id LevelDisplayName Message
# ---------- - -- ---------------- ------ -
# 27 - 9 - 2024 09:16:20            8015 Warning          The system failed to register host (A or AAAA) resource records (RRs) for network adapter…

# ProviderName: Microsoft-Windows-Kernel-Power

# TimeCreated                     Id LevelDisplayName Message
# ---------- - -- ---------------- ------ -
# 27 - 9 - 2024 09:10:11             507 Information      The system is exiting connected standby …

# ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated                     Id LevelDisplayName Message
# ---------- - -- ---------------- ------ -
# 27 - 9 - 2024 08:56:41            1500 Information      The Group Policy settings for the computer were processed successfully. There were no changes detected … 

# ProviderName: Microsoft-Windows-Kernel-Power

# TimeCreated                     Id LevelDisplayName Message
# ---------- - -- ---------------- ------ -
# 27 - 9 - 2024 08:56:06             506 Information      The system is entering connected standby …



# Get 5 events from the system log
Get-WinEvent -LogName system -MaxEvents 5 | Format-Table -AutoSize
# Output:
#    ProviderName: Microsoft-Windows-DNS-Client

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:46:20 8015 Warning          The system failed to register host (A or AAAA) resource records (RRs) for network adapter…

#    ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:42:14 1501 Information      The Group Policy settings for the user were processed successfully. There were no changes detected since the last … 

#    ProviderName: Microsoft-Windows-DNS-Client

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:16:20 8015 Warning          The system failed to register host (A or AAAA) resource records (RRs) for network adapter…

#    ProviderName: Microsoft-Windows-Kernel-Power

# TimeCreated         Id LevelDisplayName Message
# -----------         -- ---------------- -------
# 27-9-2024 09:10:11 507 Information      The system is exiting connected standby …

#    ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 08:56:41 1500 Information      The Group Policy settings for the computer were processed successfully. There were no changes detected since the l… 


#Use the WRAP parameter so that the end of the line wont cutoff
Get-WinEvent -LogName system -MaxEvents 5 | Format-Table -AutoSize -Wrap
# Output:
#    ProviderName: Microsoft-Windows-DNS-Client

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:46:20 8015 Warning          The system failed to register host (A or AAAA) resource records (RRs) for network adapter
#                                          with settings:

#                                                     Adapter Name : {A2728D85-4B51-4D8C-A57D-293966C2841B}
#                                                     Host Name : XXXXXX
#                                                     Primary Domain Suffix : xxxxxx.local
#                                                     DNS server list :
#                                                         8.8.8.8, 192.168.0.254
#                                                     Sent update to server : <?>
#                                                     IP Address(es) :
#                                                       xxxxxx

#                                          The reason the system could not register these RRs was because the update request it sent to the DNS server timed o 
#                                          ut. The most likely cause of this is that the DNS server authoritative for the name it was attempting to register o 
#                                          r update is not running at this time.

#                                          You can manually retry DNS registration of the network adapter and its settings by typing 'ipconfig /registerdns' a 
#                                          t the command prompt. If problems still persist, contact your DNS server or network systems administrator.

#    ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:42:14 1501 Information      The Group Policy settings for the user were processed successfully. There were no changes detected since the last s 
#                                          uccessful processing of Group Policy.

#    ProviderName: Microsoft-Windows-DNS-Client

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 09:16:20 8015 Warning          The system failed to register host (A or AAAA) resource records (RRs) for network adapter
#                                          with settings:

#                                                     Adapter Name : {A2728D85-4B51-4D8C-A57D-293966C2841B}
#                                                     Host Name : XXXXXX
#                                                     Primary Domain Suffix : xxxxxx.local
#                                                     DNS server list :
#                                                         8.8.8.8, 192.168.0.254
#                                                     Sent update to server : <?>
#                                                     IP Address(es) :
#                                                       xxxxxx

#                                          The reason the system could not register these RRs was because the update request it sent to the DNS server timed o 
#                                          ut. The most likely cause of this is that the DNS server authoritative for the name it was attempting to register o 
#                                          r update is not running at this time.

#                                          You can manually retry DNS registration of the network adapter and its settings by typing 'ipconfig /registerdns' a 
#                                          t the command prompt. If problems still persist, contact your DNS server or network systems administrator.

#    ProviderName: Microsoft-Windows-Kernel-Power

# TimeCreated         Id LevelDisplayName Message
# -----------         -- ---------------- -------
# 27-9-2024 09:10:11 507 Information      The system is exiting connected standby

#                                         Reason: Input Keyboard.

#    ProviderName: Microsoft-Windows-GroupPolicy

# TimeCreated          Id LevelDisplayName Message
# -----------          -- ---------------- -------
# 27-9-2024 08:56:41 1500 Information      The Group Policy settings for the computer were processed successfully. There were no changes detected since the la 
#                                          st successful processing of Group Policy.
