# # # # # Common Commands # # # # #
# ConvertTo-Xml
# ConvertFrom-Json
# ConvertTo-Json


# # # # # Loading XML Data # # # # #
# Define Variables
$path = "$((Get-Location).Path)\Countries.xml"
$xpath = "/Countries/Country/Name"
# Load XML
$xml = Select-Xml -Path $path -XPath $xpath


# # # # # Iterating and Retrieving XML Data # # # # #
# Define Variables
$path = "$((Get-Location).Path)\Countries-with-Attributes.xml"
$xpath = "/Countries/Country"
# Load XML
$xml = Select-Xml -Path $path -XPath $xpath
# Loop Through XML Property Values
$xml | ForEach-Object { $_.Node.Name }
# Output:
# China
# India
# America
# Spain

# Now load it as a big object without the XPATH
# Define Variables
# File location
$path = "$((Get-Location).Path)\Countries-with-Attributes.xml"
# Read file and cast it to XML Object
[xml]$xml = Get-Content -Path $path

$xml.Countries.Country.Name
# Output:
# China
# India     
# America   
# Spain     

$xml.Countries.Country.Population
# Output:
# 1439323776
# 1380004385
# 331002651
# 46754778



# # # # # Steps for Iterating through XML Data # # # # #
# File location
$path = "$((Get-Location).Path)\Countries-Checked.xml"
# Read file and cast it to XML Object
[xml]$xml = Get-Content -Path $path

$xml.Countries.Country | Where-Object Validated -eq "True" | `
    ForEach-Object {
    [PSCustomObject]@{
        Name       = $_.Name
        Population = $_.Population
        Checked    = $_.Validated
    }
}
# Output:
# Name  Population Checked
# ----  ---------- ------ -
# China 1439323776 True
# India 1380004385 True
# Spain 46754778   True


# # # # # Working with JSON Data # # # # #

# File location
$path = "$((Get-Location).Path)\Countries.json"
# Import JSON File
$json = Get-Content -Path $path | ConvertFrom-Json
# Export JSON File
$json | ConvertTo-Json -Depth 5 | Out-File "$((Get-Location).Path)\Countries-export.json"
# Test if valid JSON File
Get-Content -Path $path -Raw | Test-Json
# Output:
# True



# # # # # Iterating and Retrieving JSON Data # # # # #
$path = "$((Get-Location).Path)\Countries.json"
# Load JSON File
$json = (Get-Content -Path $path) | ConvertFrom-Json
$json.Countries
# Output:
# Country
# -------
# {@{Name=China; Population=1439323776; Validated=True}, @{Name=India; Population=13800043… 
$json.Countries.Country
# Output:
# Name    Population Validated
# ----    ---------- -------- -
# China   1439323776 True
# India   1380004385 True
# America 331002651  False
# Spain   46754778   True

# Loop JSON Data
foreach ($item in $json)
{
    $item.Countries.Country | Select-Object Name, Population
}
# Output:
# Name    Population
# ----    ----------
# China   1439323776
# India   1380004385
# America 331002651
# Spain   46754778


# Loop JSON Data using Expand
foreach ($item in $json)
{
    $item.Countries | Select-Object -ExpandProperty Country | `
        Select-Object Name, Population
}
# Output:
# Name    Population
# ----    ----------
# China   1439323776
# India   1380004385
# America 331002651
# Spain   46754778




# # # # # Retrieving JSON from Restful API # # # # #
$uri = "https://swapi.dev/api/people/"
# Load JSON File
$json = Invoke-RestMethod -Uri $uri
# Loop JSON Data
foreach ($item in $json.results)
{
    $item | Select-Object Name, Height, Gender
}
# Output:
# name               height gender
# ----               ------ ------
# Luke Skywalker     172    male
# C-3PO              167    n/a
# R2-D2              96     n/a
# Darth Vader        202    male
# Leia Organa        150    female
# Owen Lars          178    male
# Beru Whitesun lars 165    female
# R5-D4              97     n/a
# Biggs Darklighter  183    male
# Obi-Wan Kenobi     182    male

