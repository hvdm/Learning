# Get a list of all processes started with "e" and export it to a XML file
Get-Process e* | Export-Clixml -Path "$((Get-Location).Path)\process.xml"
# This will open the browser: Invoke-Item "$((Get-Location).Path)\process.xml"
Get-Content "$((Get-Location).Path)\process.xml" -TotalCount 10
# Output:
# <Objs Version="1.1.0.1" xmlns="http://schemas.microsoft.com/powershell/2004/04">
# <Obj RefId="0">
# <TN RefId="0">
# <T>System.Diagnostics.Process</T>
# <T>System.ComponentModel.Component</T>
# <T>System.MarshalByRefObject</T>
# <T>System.Object</T>
# </TN>
# <ToString>System.Diagnostics.Process (esif_uf)</ToString>
# <Props>
# etc


$MyXml = Import-Clixml "$((Get-Location).Path)\process.xml"
$MyXml
# Output:
# NPM(K)    PM(M)      WS(M)     CPU(s)      Id  SI ProcessName
# ------    ---- - ---- - ------      --  -- ---------- -
# 8     2, 26       6, 17       0, 00    6676   0 esif_uf
# 34   329, 68      39, 31     265, 09   24484   1 esrv
# 40   205, 21     203, 98       0, 00   36848   0 esrv_svc
# 97   143, 21     181, 72     238, 72   21524   1 EXCEL
# 137   246, 30     192, 25   1.143, 69   14788   1 explorer

$MyXml | Get-Member
# Output:
# TypeName: Deserialized.System.Diagnostics.Process

# Name                       MemberType   Definition
# ----                       ----------   ----------
# GetType                    Method       type GetType()
# ToString                   Method       string ToString(), string ToString(string format, System.IFormatProvider formatProvider), string IFormattable.ToString(string format, … 
# CommandLine                NoteProperty object CommandLine=null
# Company                    NoteProperty object Company=null
# CPU                        NoteProperty object CPU=null
# Description                NoteProperty object Description=null
# FileVersion                NoteProperty object FileVersion=null


$MyXml | Select-Object Name, WorkingSet
# Output:
# Name     WorkingSet
# ----     ----------
# esif_uf     6467584
# esrv       41222144
# esrv_svc  213889024
# EXCEL     190545920
# explorer  201584640


# Export an object to standard XML
$convertedXml = Get-Process e* | ConvertTo-Xml
$convertedXml.Save("$((Get-Location).Path)\convertedXml.xml")

