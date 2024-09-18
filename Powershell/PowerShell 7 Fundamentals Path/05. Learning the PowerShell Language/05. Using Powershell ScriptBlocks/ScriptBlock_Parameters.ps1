# BE AWARE:
# Parameters in ScriptBlocks are positional, this means they have to be in the same order

# $sb = {Param($log, $count) Get-WinEvent -log $log -max $count}
# or
# $sb = {
#           Param($log, $count) 
#           Get-WinEvent -log $log -max $count
#       }

$sb = {
          Param($log, $count) 
          Get-WinEvent -log $log -max $count
      }

# Run the invoke command to execute the scriptblock
&$sb system 2 | Format-List ProviderName, ID, LevelDisplayName, Message
# or
Invoke-Command -ScriptBlock $sb -ArgumentList "system", 2 | Format-List ProviderName, Id, LevelDisplayName, Message




