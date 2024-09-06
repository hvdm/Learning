# PS Drives = Datastore location or Entry point

# When you use Get-ChildItem c:\windows the C: drive is a PSdrive that belongs to the File System Provider
# File System Provider
# C:\
# D:\
# etc

# Registry provider
# HKCU
# HKLM
# etc

Get-PSDrive
# Output:
# Name           Used (GB)     Free (GB) Provider      Root                                                 CurrentLocation
# ----           ---------     --------- --------      ----                                                 --------------- 
# Alias                                  Alias
# C                 200,09         96,34 FileSystem    C:\
# Cert                                   Certificate   \
# D                 857,29        708,68 FileSystem    D:\
# Env                                    Environment
# Function                               Function
# HKCU                                   Registry      HKEY_CURRENT_USER
# HKLM                                   Registry      HKEY_LOCAL_MACHINE
# Temp              200,09         96,34 FileSystem    C:\Users\<username>\AppData\Local\Te…
# Variable                               Variable
# WSMan                                  WSMan


