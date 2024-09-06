$docFolder = ([Environment]::GetFolderPath("MyDocuments"))
$rawPath = Join-Path -path "$docFolder\PowerShell\Modules\PSTeachingTools\4.2.0\Code" -ChildPath rawveggies.json

$json = Get-Content -path $rawPath | ConvertFrom-Json

$StatusMap = @{
    0 = 'Raw'
    1 = 'Boiled'
    2 = 'Steamed'
    3 = 'Sauteed'
    4 = 'Fried'
    5 = 'Baked'
    6 = 'Roasted'
    7 = 'Grilled'
}

foreach ($vegetable in $json) 
{
    $name = $vegetable.Name
    $oldState = (Get-Vegetable -Name $vegetable.Name).CookedState
    [int32]$newState = $vegetable.Cookingstate
    [string]$newStateName = $StatusMap[$newState]

    Write-Host "Convert $($name) from $($oldState) to $($newStateName)"
    Set-Vegetable -Name $name -CookingState $newStateName
}    
