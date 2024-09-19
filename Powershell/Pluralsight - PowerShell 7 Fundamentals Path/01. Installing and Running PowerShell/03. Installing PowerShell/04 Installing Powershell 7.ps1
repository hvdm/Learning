# From PS5 start:
Install-Module PSReleaseTools
Install-Module psteachingtools
Install-Module Microsoft.PowerShell.ConsoleGuiTools

# Get Version installed
Get-PSReleaseCurrent

# Install PS7
mkdir c:\PS7
Get-PSReleaseAsset -Family Windows -Only64Bit -Format msi | Save-PSReleaseAsset c:\PS7 | whatif

# - OR -
# Download AND Install 
Install-PowerShell -EnableRemoting -EnableContextMenu


