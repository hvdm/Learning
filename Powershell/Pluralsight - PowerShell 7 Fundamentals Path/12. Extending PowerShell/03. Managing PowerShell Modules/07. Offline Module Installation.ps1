# Create a destination folder where the module needs to be saved
New-Item d:\OfflineModule -ItemType Directory

# Save a module for later usage
Save-Module -Name PSSlack -Path d:\OfflineModule

# See it's contents
Get-ChildItem d:\OfflineModule
# Output:
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----           8-10-2024    15:32                PSSlack

# A PSSlack folder is created
# See it's contents
Get-ChildItem D:\OfflineModule\PSSlack
# Output:
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----           8-10-2024    15:32                1.0.6

# It created a version folder
# See it's contents
Get-ChildItem D:\OfflineModule\PSSlack\1.0.6
# Output:
# Mode                 LastWriteTime         Length Name
# ----                 -------------         ------ ----
# d----           8-10-2024    15:32                en-US
# d----           8-10-2024    15:32                Private
# d----           8-10-2024    15:32                Public
# -a---            1-7-2021    00:45          20961 PSSlack.Format.ps1xml
# -a---            1-7-2021    00:46           2428 PSSlack.psd1
# -a---            1-7-2021    00:45           6071 PSSlack.psm1


# Copy the PSSlack folder to another computer without internet for example
# to C:\users\<username>\Documents\PowerShell\Modules\

# Use import-module
Import-Module PSSlack

