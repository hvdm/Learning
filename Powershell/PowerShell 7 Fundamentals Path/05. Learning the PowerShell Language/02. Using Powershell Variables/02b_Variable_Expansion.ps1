$name = "Blah"
"Hello, my name is $name"

$PSEdition
"running the $PSedition of Powershell"


$svc = Get-Service BITS
$svc | select name,Status

# This wil fail
"$svc.name is $svc.status"
# It returns:    System.ServiceProcess.ServiceController.name is System

# Use a subexpression instead
# ($svc.name) will be evaluated first
"$($svc.name) is $($svc.status)"
