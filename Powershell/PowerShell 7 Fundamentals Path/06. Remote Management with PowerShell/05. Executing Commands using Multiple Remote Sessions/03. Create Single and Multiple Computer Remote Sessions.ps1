$creds = Get-Credential -Credential "contoso\administrator"

# Interactive Session
# From 10.0.0.8
Enter-PSSession -ComputerName 10.0.0.5 -Credential $creds

# Create a Session
# From 10.0.0.8
New-PSSession -ComputerName 10.0.0.5 -Credential $creds


