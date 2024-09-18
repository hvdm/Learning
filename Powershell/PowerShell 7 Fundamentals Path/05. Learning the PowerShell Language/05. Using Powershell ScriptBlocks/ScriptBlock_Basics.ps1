# Creating a ScriptBlock:
# Plase the code inside { }
# for example:
$sb = { Get-Service | where {$_.Status -eq 'running'} }

# To tun the script block you need to use the invoke operator &
& $sb

# Another way is to invoke-command
Invoke-Command $sb

# Define a hashtable $new that holds the parameters for the new-item command
$new = @{
            Path     = "C:\Work"
            ItemType = "Directory"
            Force    = $true
        }

# For each number from 1..10 run the new-item command with @new as parameters        
1..10 | ForEach-Object { New-Item -Name "Data-$_" @new }
