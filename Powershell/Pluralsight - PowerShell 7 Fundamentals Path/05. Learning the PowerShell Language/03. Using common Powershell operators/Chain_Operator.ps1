# Chain operator   &&
# if the left side of the expression is true then execute whats on the right site
# if the left side failes, then the right side wont be executed
#|-------left---------|&&|right|
  Get-Process -Id $PID && 100
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    -----      -----     ------      --  -- -----------
#    224   269,61     329,48     545,62   19292   1 pwsh
# 100
 
# Left side gives an error and right side wont be executed
  Get-Process -Id 999999 && 100
# Cannot find a process with the process identifier 999999.

$computer = $env:COMPUTERNAME
Test-WSMan $computer && Get-CimInstance Win32_BIOS -ComputerName $computer

# to surpress the error
$computer = "foo"
(Test-WSMan $computer | Out-Null && Get-CimInstance Win32_BIOS -ComputerName $computer) || Write-Warning "Failed on $computer"

