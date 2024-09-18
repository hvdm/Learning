# Create a new PSdrive that maps to the current users download folder
New-PSDrive -Name Downloads -Root C:\Users\Public\Downloads\ -PSProvider FileSystem
# Output
# Name           Used (GB)     Free (GB) Provider      Root                                                                           CurrentLocation
# ----           ---------     --------- --------      ----                                                                           --------------- 
# Downloads         200,60         95,84 FileSystem    C:\Users\Public\Downloads\

# Check if it is created
Get-PSDrive
# Output
# Name           Used (GB)     Free (GB) Provider      Root                                                                           CurrentLocation
# ----           ---------     --------- --------      ----                                                                           --------------- 
# Alias                                  Alias
# C                 200,60         95,84 FileSystem    C:\
# Cert                                   Certificate   \
# D                 857,29        708,68 FileSystem    D:\
# Downloads         200,60         95,84 FileSystem    C:\Users\Public\Downloads\
# Env                                    Environment
# Function                               Function
# HKCU                                   Registry      HKEY_CURRENT_USER
# HKLM                                   Registry      HKEY_LOCAL_MACHINE
# Temp              200,60         95,84 FileSystem    C:\Users\<username>\AppData\Local\Te…
# Variable                               Variable
# WSMan                                  WSMan

# USe Set-Location to get into the PSdrive and use the management commands
Set-Location Downloads:
Get-ChildItem Downloads: