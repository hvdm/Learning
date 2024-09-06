# Ternary operator is an alternative to if/else
# <condition to test> ? <true code>:<false code>

# Only available from Powershell 7

# 
if (2 -ge 1) {"Yes"} else {"No"}

# Same code using ternary operator
2 -ge 1 ? "Yes" : "No"

(Get-Process notepad)