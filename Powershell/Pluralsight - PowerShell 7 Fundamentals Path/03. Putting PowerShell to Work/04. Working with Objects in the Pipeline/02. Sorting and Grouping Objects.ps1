# Sort-Object -property <PropertyName>
Get-Service | Sort-Object -Property DisplayName | Format-Table
# Output:
# Status   Name               DisplayName
# ------   ----               -----------
# Stopped  AxInstSV           ActiveX Installer (AxInstSV)
# Running  AdobeARMservice    Adobe Acrobat Update Service
# Stopped  AarSvc_42a4d1      Agent Activation Runtime_42a4d1
# Stopped  AJRouter           AllJoyn Router Service
# Stopped  AppReadiness       App Readiness
# Stopped  AppIDSvc           Application Identity
# Running  Appinfo            Application Information
# Stopped  ALG                Application Layer Gateway Service
# Stopped  AppMgmt            Application Management
# Running  AppXSvc            AppX Deployment Service (AppXSVC)
# Stopped  AssignedAccessMan… AssignedAccessManager Service
# Stopped  tzautoupdate       Auto Time Zone Updater
# Running  BthAvctpSvc        AVCTP service
# Stopped  BITS               Background Intelligent Transfer Servi…
# ...
# Running  LanmanWorkstation  Workstation
# Running  WwanSvc            WWAN AutoConfig
# Stopped  XboxGipSvc         Xbox Accessory Management Service
# Stopped  XblAuthManager     Xbox Live Auth Manager
# Stopped  XblGameSave        Xbox Live Game Save
# Stopped  XboxNetApiSvc      Xbox Live Networking Service


# Group-Object -property <PropertyName>
# This will write a new object to the pipeline
Get-Service | Group-Object -Property StartType | Format-Table
# Output:
# Count Name                      Group
# ----- ----                      -----
#   111 Automatic                 {AdobeARMservice, agent_ovpnconnect, AudioEndpointBuilder, Audiosrv…}
#   206 Manual                    {AarSvc_42a4d1, AJRouter, ALG, AppIDSvc…}
#    13 Disabled                  {AppVClient, CscService, DialogBlockingService, LanmanServer…}

