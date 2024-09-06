# Hashtable
# A data structure with Key/Value pairs. Keys are unique

# A hastable is created like:  @{ Key=value; ...... }


# Create an empty hashtable
$ht = @{}
# Or create a hashtable with values
$ht = @{name = "blah"; count = 3; "Sample entry"="This is something"}

# Get the members of a hashtable
$ht | Get-Member
$ht | ft

# Add an element
$ht.Add("Version", 123)
$ht | ft

# Change an element
$ht.count
# Increment by 1 using ++
$ht.count ++
$ht.count
# Assign a new value
$ht.count = 10
$ht.count

# Access item reference by name
$ht.name
$ht["name"]
$ht.Item("name")

# Get a list of all values
$ht.Values

# Get a list of all keys
$ht.Keys


# Remove an element
$ht.Remove("Version")
$ht.Keys

# Remove all entries, ending up with an empty hashtable, the variable still exists
$ht.Clear()
$ht

$ht = @{name = "blah"
        count = 3
        ps = Get-Process -id $PID
        service = Get-CimInstance Win32_service
        nested = @{ foo = "bar";
                    vendor = "Pluralsight";
                    color = "green"}
       } 

$ht

# Get the services in the hashtable an place it in an array
$ht.service[0..4] | FT

# Get the powershell process ID
$ht.ps

# Get an element of Get-Process in ps
$ht.ps.CommandLine

# Get an element of the nested hashtable
$ht.nested.vendor

# Change an element in the nested hashtable
$ht.nested.color
$ht.nested.color = "Red"
$ht.nested.color

# Hashtables are unordered, when listed it's not in the order that it's created
# Create a hashtable ordered

# Standard hashtable $ht | Get-Member    TypeName: System.Collections.Hashtable
# Ordered  hashtable $k  | Get-Member    TypeName: System.Collections.Specialized.OrderedDictionary


$k = [ordered]@{First = 1; Second = "foo"; Third = "blah" }
$k | FT
$k


# A practical way to use a hashtable
# First step is splatting

# Standard command would look like this
Get-Service -Name b* -Exclude Bits | FT

# The names of the keys will match the names of the parameters used for Get-Service
$p = @{Name = "b*"; Exclude = "Bits"}
Get-Service @p | FT

$cim = @{Classname = "Win32_bios"; Verbose = $True}
$cim

Get-CimInstance @cim

$cim.Classname = "Win32_operatingsystem"
Get-CimInstance @cim
# You still can add extra parameters
Get-CimInstance @cim -ComputerName localhost









# $h = @{Name = "Blah"; Count=3}
# $h

# # Reference items like an object
# $h.Name
