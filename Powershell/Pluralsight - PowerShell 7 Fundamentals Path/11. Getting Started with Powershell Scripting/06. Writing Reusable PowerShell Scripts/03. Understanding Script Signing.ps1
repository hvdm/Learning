# # # # # Why Digitally Sign a PowerShell Script # # # # #
# Seperate custom developed, tested and personal scripts
# Ensure scripts are not malicious
# Validate that the script is doing versus its intened purpose


# # # # # Understanding Script Signing # # # # #
# Must sign with a "code signing certificate"
# Two types of certficiates are suitable: 
#   Public Cert-Authority: Share scripts with other computers as they are trusted by the CA
#   Self-Signed: Will not execute on other computers when Self-Signed is not trusted
# USe a Self-Signed certificate to sign scripts that you write for personal use


# # # # # Create a Self-Signed Digiral Certificate # # # # #
# Set the PowerShell Script Path
$Script = "$((Get-Location).Path)\Script.ps1"

# Create a Self-Signed Code Signing Certificate
New-SelfSignedCertificate `
    -DnsName "script.example.com" `
    -CertStoreLocation "Cert:\CurrentUser\My" `
    -Type CodeSigningCert `
    -Subject "PowerShell Code Signing Certificate"
# Output:
#    PSParentPath: Microsoft.PowerShell.Security\Certificate::CurrentUser\My

# Thumbprint                                Subject              EnhancedKeyUsageList
# ----------                                -------              --------------------
# F22F1000F0961F59DD9FB379571788210222AB3B  CN=PowerShell Code … Code Signing        

# Open MMC, add the Certificate snapin for the "My User Account"
# Go to Console Root -> Certificates - Current User -> Personal -> Certificates
# Right Click and COPY "PowerShell Code Signing Certificate"
# Go to "Trusted Root Certification Authority and PASTE the certificate"


# Retrieve the Code Signing Certificate
$certificate = (Get-ChildItem Cert:\CurrentUser\my -CodeSigningCert)[0]
Set-AuthenticodeSignature -FilePath $Script -Certificate $certificate
# SignerCertificate                         Status           StatusMessage    Path
# -----------------                         ------           -------------    ----
# F22F1000F0961F59DD9FB379571788210222AB3B  Valid            Signature verif… Script.ps1       

# IF THE STATUS IS IN ERROR, YOU HAVEN'T DONE THE STEPS ABOVE

Get-AuthenticodeSignature -FilePath $Script | Format-Table -AutoSize
# Output:
# SignerCertificate                        Status StatusMessage       Path
# ---------------- - ------ ------------ - ----
# F22F1000F0961F59DD9FB379571788210222AB3B Valid  Signature verified. Script.ps1

# Now watch the signed script, it has injected the singing cert

# OUTPUT:
Write-Host "Hello World!"



# SIG # Begin signature block
# MIIF7QYJKoZIhvcNAQcCoIIF3jCCBdoCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# Truncated :-)
# BgkqhkiG9w0BAQEFAASCAQA1pVHUzg4aVGq3BGp5sRwBpPTY72WbAmH6IJqZ1x0Y
# BJjAG9UggWcvVALvQm2ZcMPNy5T2dWW//GYuSmDRKOvKcSvk6/lmmBK0nxfT7wZH
# 3oWXxFmhoM3jY5/NANJhe2GTSv668xbMLqX2ccyoYeD76s+gDfx6W90iKAaJBrW1
# Wxf1YeXQnydFIvCQ3ZwS1osPvYpk4UtCyHy97ovWB3UVMSDpdAbsjtk1BxW3p38t
# uP+2UG2zWdbsEpkzXxu6aghv/ugIBCsba901zx1JYiE9IL55CnQg0I0zCF2judoO
# i5Rolm6/tEvLTHw90ZHW+tpxzpmxu67oSrYkDBvCXryl
# SIG # End signature block

