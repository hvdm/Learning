# # # # # Comment PowerShell Scripts # # # # #

# Single-Line Comments:
# This function returns a string
function Invoke-Message()
{
    Write-Host "Some Text"
}

# Block Comments or Multiline Comments:
<#
  This function returns a string
  The string will be displayed in Red  
#>
function Invoke-Message()
{
    Write-Host "Some Text" -ForegroundColor Red
}

# Commenting-out existing code
# function Invoke-Message()
# {
#     Write-Host "Some Text" -ForegroundColor Red
# }


#   Comment-Based Help
#   Collection of keywords and string values wrapped within a block comment
function Get-SampleData
{
    <#
.SYNOPSIS
    This function retrieves sample data for demonstration purposes.

.DESCRIPTION
    Get-SampleData fetches a list of sample data entries that can be used for testing or as placeholders.

.PARAMETER Count
    The number of sample data entries to retrieve. The default value is 5.

.EXAMPLE
    Get-SampleData -Count 10
    This command retrieves 10 sample data entries.

.EXAMPLE
    Get-SampleData
    This command retrieves the default number of sample data entries (5).

.INPUTS
    [System.Int32]

.OUTPUTS
    [System.Object[]]

.NOTES
    Author: Your Name
    Last Updated: October 2024

.LINK
    https://example.com/more-info
#>
    param ( [int]$Count = 5 )

    # Sample data generation logic
    $sampleData = 1..$Count | ForEach-Object { "Sample Entry $_" }

    return $sampleData
}