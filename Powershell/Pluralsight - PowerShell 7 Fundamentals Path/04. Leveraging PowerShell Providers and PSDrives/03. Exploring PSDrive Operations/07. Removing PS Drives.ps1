# First get a list of PSDrives
Get-PSDrive
# Output:
# Name           Used (GB)     Free (GB) Provider      Root                                                                           CurrentLocation
# ----           ---------     --------- --------      ----                                                                           --------------- 
# Alias                                  Alias
# C                 200,88         95,55 FileSystem    C:\
# Cert                                   Certificate   \
# D                 857,29        708,68 FileSystem    D:\
# Downloads         200,88         95,55 FileSystem    C:\Users\Public\Downloads\
# Env                                    Environment
# Function                               Function
# HKCU                                   Registry      HKEY_CURRENT_USER
# HKLM                                   Registry      HKEY_LOCAL_MACHINE
# PowerShel…                             Registry      HKEY_LOCAL_MACHINE\SOFTWARE\Micros…
# Q                 857,29        708,68 FileSystem    Q:\
# RootCA                                 Certificate   \CurrentUser\Root\
# Temp              200,88         95,55 FileSystem    C:\Users\<username>\AppData\Local\Te…
# Variable                               Variable
# WSMan                                  WSMan

Remove-PSDrive RootCA,Downloads,PowerShellCoreRegistry