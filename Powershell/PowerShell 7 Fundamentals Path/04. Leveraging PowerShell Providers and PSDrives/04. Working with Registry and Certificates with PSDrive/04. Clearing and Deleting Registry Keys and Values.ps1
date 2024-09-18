# Set the location first
Set-Location HKCU:\SOFTWARE

Get-ItemProperty -Path .\App2 -name Just_A_NEW_ItemProperty
# Output:
# Just_A_NEW_ItemProperty : Just_A_NEW_ItemPropertyValue

# Clear the value
Clear-ItemProperty -Path .\App2 -name Just_A_NEW_ItemProperty

# Check if the Item-Proprty has been cleared
Get-ItemProperty -Path .\App2 -name Just_A_NEW_ItemProperty
# Output:
# Just_A_NEW_ItemProperty : 

# Remove the Item-Property
Remove-ItemProperty -Path .\App2 -name Just_A_NEW_ItemProperty

# Check if the Item-Proprty has been removed
Get-ItemProperty -Path .\App2 -name Just_A_NEW_ItemProperty
# Output:
# Property Just_A_NEW_ItemProperty does not exist at path HKEY_CURRENT_USER\SOFTWARE\App2.


# Creating a few entries, so the key isn't empty
New-ItemProperty .\App2\ -Name "Item 1" -Value "Value 1"
New-ItemProperty .\App2\ -Name "Item 2" -Value "Value 2"
New-ItemProperty .\App2\ -Name "Item 3" -Value "Value 3"
New-ItemProperty .\App2\ -Name "Item 4" -Value "Value 4"
New-ItemProperty .\App2\ -Name "Item 5" -Value "Value 5"


# Clearing the Registry Key
Clear-Item -Path .\App2

# Removing the Registry Key
Remove-Item -Path .\App2

