# The easiest way to create a PSCredential object:
# $creds = Get-Credential
# Output:
# PowerShell credential request
# Enter your credentials.
# User: test
# Password for user test: ****

# $creds:
# UserName                     Password
# --------                     --------
# test     System.Security.SecureString


# Get the login propmpt for entering credentials
#$creds = Get-Credential -Credential "contoso\administrator"
# Credential object $creds
# UserName                                  Password
# --------                                  --------
# contoso\administrator System.Security.SecureString


# The more complicated approach
$user = "contoso\administrator"
$pwd = "P@ssw0rd!"
# $creds is of type System.Security.SecureString
# This means "P@ssw0rd!" as value in $pwd can't be used
$pwd = ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force
# $pwd
# System.Security.SecureString
$creds = New-Object System.Management.Automation.PSCredential($user,$PWD)
# Credential object $creds
# UserName                                  Password
# --------                                  --------
# contoso\administrator System.Security.SecureString
