# # # # # Creating a Basic PowerShell Function # # # # #

# Create a Function
function Get-Answer()
{
    $question = Read-Host "What is the Capital of The Netherlands?"

    if ($question -eq "Amsterdam")
    {
        Write-Host -ForegroundColor Green "Correct!!! You entered $question"
    }
    else
    {
        Write-Host -ForegroundColor Red "Incorrect!!! You entered $question"
    }
}

# Get-Answer

# Create a Function using Arguments
function Get-Answer1()
{
    $question = Read-Host "Hi $($args[0]), What is the Capital of The Netherlands?"

    if ($question -eq "Amsterdam")
    {
        Write-Host -ForegroundColor Green "Correct!!! You entered $question"
    }
    else
    {
        Write-Host -ForegroundColor Red "Incorrect!!! You entered $question"
    }
}

# Get-Answer1

# Create a Function using Variables
function Get-Answer2($name)
{
    $question = Read-Host "Hi $name, What is the Capital of The Netherlands?"

    if ($question -eq "Amsterdam")
    {
        Write-Host -ForegroundColor Green "Correct!!! You entered $question"
    }
    else
    {
        Write-Host -ForegroundColor Red "Incorrect!!! You entered $question"
    }
}

# Get-Answer2 ("dude")

# Create a Function using Parameters
function Get-Answer3()
{
    param(
        [Parameter(Mandatory = $true)]
        [ValidateSet("Amsterdam", "Rotterdam", "Utrecht", "Limburg")]
        [String]$city
    )

    if ($city -eq "Amsterdam")
    {
        Write-Host -ForegroundColor Green "Correct!!! You entered $city"
    }
    else
    {
        Write-Host -ForegroundColor Red "Incorrect!!! You entered $city"
    }
}

# Get-Answer3 ("Amsterdam")

# # # # # Basic Script - Iterate Files Function # # # # #

# Interate Files Function
Function Get-Files
{
    Param
    (
        [Parameter(Mandatory = $true)]
        [String]$FileType
    )

    Get-ChildItem -Path "c:\Windows\System32\*.$FileType" -Recurse -Force
}

# Get-Files ("ps1")

# # # # # Basic Script - Create Picker Values # # # # #

# Create Class for Autocomplete Values
class Cities : System.Management.Automation.IValidateSetValuesGenerator
{
    [string[]] GetValidValues()
    {
        $Cities = @("1.4 Million", "750 Thousand", "2 Million", "500 Thousand")
        return $Cities
    }
}

### Instantiate the class
# $citiesInstance = [Cities]::new()
### Call the GetValidValues method to retrieve the valid city values
#$validCities = $citiesInstance.GetValidValues()
### Output the valid city values
#$validCities



# # # # # Basic Script - Question Function # # # # #

Function Test-PopulationOfHawaii
{
    param 
    (
        [Parameter(Mandatory = $true)]
        [ValidateSet([Cities])]
        [String]$Answer
    )

    if ($Answer -eq "1.4 Million")
    {
        Write-Host -ForegroundColor Green "Correct!!"
    }
    else
    {
        Write-Host -ForegroundColor Red "Incorrect!!"
    }
}

#Test-PopulationOfHawaii "1.4 Million"


# # # # # Basic Script - Math Function # # # # #
Function Invoke-AddNumbers([int]$number1, [int]$number2)
{
    return $number1 + $number2
}

Function Invoke-SubtractNumbers([int]$number1, [int]$number2)
{
    return $number1 - $number2
}

Function Invoke-MultiplyNumbers([int]$number1, [int]$number2)
{
    return $number1 * $number2
}

Function Invoke-DivideNumbers([int]$number1, [int]$number2)
{
    return $number1 / $number2
}

Function Get-MathAnswer
{
    Param
    (
        [int] $numberOne,
        [int] $numberTwo,
        [ValidateSet("Add", "Subtract", "Multiply", "Divide")]
        [string] $mathoperator
    )

    [int] $answer = ""

    Write-host "Math Operator = $mathoperator"

    if ($mathoperator –eq "Add")
    {
        $answer = Invoke-AddNumbers $numberOne $numberTwo
    }
    elseif ($mathoperator –eq "Substract")
    {
        $answer = Invoke-SubstractNumbers $numberOne $numberTwo
    }
    elseif ($mathoperator –eq "Multiply")
    {
        $answer = Invoke-MultiplyNumbers $numberOne $numberTwo
    }
    elseif ($mathoperator –eq "Divide") 
    {
        $answer = Invoke-DivideNumbers $numberOne $numberTwo
    }

    return $answer

}

Get-MathAnswer -numberOne 10 -numberTwo 2 -mathoperator Add
Get-MathAnswer -numberOne 10 -numberTwo 2 -mathoperator Divide
Get-MathAnswer -numberOne 10 -numberTwo 2 -mathoperator Multiply
Get-MathAnswer -numberOne 10 -numberTwo 2 -mathoperator Subtract


