# Currently when PS terminal is open, you're in the C drive
# Change the location through for example the Certification Provider

# Current prompt: PS C:\Users\<UserName>
Set-Location Cert:\
# New Location  : PS Cert:\>
get-item *
# Output:
# Location   : CurrentUser
# StoreNames : {[UserDS, True], [Disallowed, True], [My, True], [OpenVPN Certificate Store, True]…}

# Location   : LocalMachine
# StoreNames : {[FlightRoot, True], [SMS, True], [CanaryCertStore, True], [Disallowed, True]…}

