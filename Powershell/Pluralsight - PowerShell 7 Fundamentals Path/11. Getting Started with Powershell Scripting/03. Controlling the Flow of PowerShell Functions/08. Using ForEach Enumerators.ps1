# # # # # ForEach Syntax # # # # #
# foreach (Item In Collection)
# {
#     <code> or <sequence of commands>
# }

$collection1 = 1..10
$collection2 = "A", "B", "C", "D", "E", "F", "G", "H"
$path = "C:\Windows"

foreach ($item in $collection1)
{
    Write-Host "Current Number: $item"
}
#Output:
# Current Number: 1
# Current Number: 2
# Current Number: 3
# Current Number: 4
# Current Number: 5
# Current Number: 6
# Current Number: 7
# Current Number: 8
# Current Number: 9
# Current Number: 10

foreach ($item in $collection2)
{
    Write-Host "Current Letter: $item"
}
# Output:
# Current Letter: A
# Current Letter: B
# Current Letter: C
# Current Letter: D
# Current Letter: E
# Current Letter: F
# Current Letter: G
# Current Letter: H

foreach ($file in Get-ChildItem $path -File)
{
    Write-Host "Current FileName: $file"
}
# Output:
# Current FileName: C:\Windows\0
# Current FileName: C:\Windows\bfsvc.exe   
# Current FileName: C:\Windows\bootstat.dat
# Current FileName: C:\Windows\camera.log
# Current FileName: C:\Windows\DfsrAdmin.exe       
# Current FileName: C:\Windows\DfsrAdmin.exe.config
# Current FileName: C:\Windows\DtcInstall.log      
# Current FileName: C:\Windows\Education.xml
# Current FileName: C:\Windows\Enterprise.xml
# Current FileName: C:\Windows\explorer.exe
# Current FileName: C:\Windows\HelpPane.exe
# Current FileName: C:\Windows\hh.exe
# Current FileName: C:\Windows\IoTEnterprise.xml
# Current FileName: C:\Windows\lsasetup.log
# Current FileName: C:\Windows\mib.bin
# Current FileName: C:\Windows\notepad.exe
# Current FileName: C:\Windows\PFRO.log
# Current FileName: C:\Windows\Professional.xml
# Current FileName: C:\Windows\ProfessionalCountrySpecific.xml
# Current FileName: C:\Windows\ProfessionalEducation.xml
# Current FileName: C:\Windows\ProfessionalSingleLanguage.xml
# Current FileName: C:\Windows\ProfessionalWorkstation.xml
# Current FileName: C:\Windows\py.exe
# Current FileName: C:\Windows\pyshellext.amd64.dll
# Current FileName: C:\Windows\pyw.exe
# Current FileName: C:\Windows\regedit.exe
# Current FileName: C:\Windows\ServerRdsh.xml
# Current FileName: C:\Windows\setupact.log
# Current FileName: C:\Windows\setuperr.log
# Current FileName: C:\Windows\SMSAdvancedClient.cm2211-client-kb16643863-x64.mif
# Current FileName: C:\Windows\SMSAdvancedClient.cm2309-client-kb25858444-x64.mif
# Current FileName: C:\Windows\SMSCFG.INI
# Current FileName: C:\Windows\splwow64.exe
# Current FileName: C:\Windows\system.ini
# Current FileName: C:\Windows\TbtP2pShortcutService.exe
# Current FileName: C:\Windows\twain_32.dll
# Current FileName: C:\Windows\win.ini
# Current FileName: C:\Windows\WindowsUpdate.log
# Current FileName: C:\Windows\winhlp32.exe
# Current FileName: C:\Windows\WMSysPr9.prx
# Current FileName: C:\Windows\write.exe