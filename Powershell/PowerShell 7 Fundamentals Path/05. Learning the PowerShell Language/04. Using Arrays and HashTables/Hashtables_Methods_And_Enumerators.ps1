# Create a hashtable and add key "name" and value "foo"
$j = @{name = "foo"}

# Add another key "name" and value "bar"
# This will fail because "name" allready exists
# Error: Exception calling "Add" with "2" argument(s): "Item has already been added. Key in dictionary: 'name'  Key being added: 'name'"
$j.Add("name", "bar")

$j | Get-Member -Name contains*
$j.ContainsKey("name")

# Run Get-Process
Get-Process |
# For every process that comes through the pipeline do
ForEach-Object -Begin { $p = @{}} -Process  {
                                                if ($p.Contains($_.Name)) 
                                                    {
                                                        $p.Item($_.Name) += $_.WS
                                                    }
                                                else 
                                                    {
                                                        $p.Add($_.Name, $_.WS)
                                                    }
                                            }

$p

# Try to sort the processes
# This doesnt work
$p | Sort-Object -Property Name | ft

$p | Get-Member
# it gets an object of $p from System.Collections.Hashtable
# It is not a process object, it doesn't know the name property
# You need to use the GetEnumerator, a method on the hashtable
# this is a different object type -> System.Collections.DictionaryEntry
$p.GetEnumerator() | Get-Member
# it does have a key/value and also a name alias
$p.GetEnumerator() | Sort-Object -Property Name | FT

Write-Host "----------"
# Get all processes which uses more then 250MB
$p.GetEnumerator() | Where-Object {$_.Value -ge 250MB}
Write-Host "----------"




