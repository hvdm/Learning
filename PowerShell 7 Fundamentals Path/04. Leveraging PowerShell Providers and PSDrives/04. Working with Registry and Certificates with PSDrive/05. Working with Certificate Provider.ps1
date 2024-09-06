# Switch to the Cert PSDrive
Set-Location Cert:\

# Get the store locations
Get-item *
# Output:
# Location   : CurrentUser
# StoreNames : {[UserDS, True], [Disallowed, True], [My, True], [OpenVPN Certificate Store, True]…}

# Location   : LocalMachine
# StoreNames : {[FlightRoot, True], [SMS, True], [CanaryCertStore, True], [Disallowed, True]…}

# Navigate to the CurrentUser Cert Store
Set-Location .\\CurrentUser

# Get a list of Certiftcate stores under the Current User
Get-item *
# Output: 
# Name : UserDS
# Name : Disallowed
# Name : My
# Name : OpenVPN Certificate Store
# Name : McAfee Trust
# Name : TrustedPublisher
# Name : SmartCardRoot
# Name : TrustedPeople
# Name : ISG Trust
# Name : ACRS
# Name : ClientAuthIssuer
# Name : AuthRoot
# Name : REQUEST
# Name : Root
# Name : CA
# Name : Trust
# Name : ADDRESSBOOK

# Get the certificates under the trusted root
Get-ChildItem .\Root 
# Output:
# Thumbprint                                Subject              EnhancedKeyUsageList
# ----------                                -------              --------------------
# 11223344556677889900AABBCCDDEEFF00112233  CN=Microsoft Root C…
# 11223344556677889900AABBCCDDEEFF00112233  CN=Thawte Timestamp…
# .....

# Get a list of all certificates that expires within 30 days
Get-ChildItem Cert:\LocalMachine\Root -ExpiringInDays 30 -Recurse
