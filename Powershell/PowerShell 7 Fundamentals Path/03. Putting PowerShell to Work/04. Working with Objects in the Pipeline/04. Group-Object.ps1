# Running Get-Vegetable
Get-Vegetable

# UPC     Count Name                 State    Color
# ---     ----- ----                 -----    -----
# 4078       12 corn                 Grilled  yellow
# 4064        4 tomato               Raw      red
# 4062       11 cucumber             Raw      green
# 4562       10 carrot               Raw      orange
# 4089       13 radish               Raw      red
# 4674       14 peas                 Raw      green
# 4811       12 turnip               Raw      purple
# 4725       18 russet potato        Raw      brown
# 4060       15 broccoli             Raw      green
# 4067        7 zucchini             Raw      green
# 4090        4 spinach              Raw      green
# 4572        7 cauliflower          Raw      white
# 3125       17 habanero pepper      Raw      orange
# 4677       16 Anaheim pepper       Raw      green
# 4088       19 red bell pepper      Raw      red
# 4081        6 eggplant             Raw      purple
# 4604        2 endive               Raw      green

# Group the output by color
Get-Vegetable |                                 # Get the output of Get-Vegetable
Group-Object -Property Color |                  # Group them by color
Format-Table                                    # Format the output
# Output:
# You only see property Count and Name
#
# Count Name                      Group
# ----- ----                      -----
#     7 green                     {PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetabl… 
#     3 red                       {PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable}
#     1 white                     {PSTeachingTools.PSVegetable}
#     1 yellow                    {PSTeachingTools.PSVegetable}
#     2 orange                    {PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable}
#     2 purple                    {PSTeachingTools.PSVegetable, PSTeachingTools.PSVegetable}
#     1 brown                     {PSTeachingTools.PSVegetable}

# This is a different type of object
Get-Vegetable |                                 # Get the output of Get-Vegetable
Group-Object -Property Color |                  # Group them by color
Get-Member                                      # And show it's members
# Output

# TypeName: Microsoft.PowerShell.Commands.GroupInfo
#
# Name        MemberType Definition
# ----        ---------- ----------
# Equals      Method     bool Equals(System.Object obj)
# GetHashCode Method     int GetHashCode()
# GetType     Method     type GetType()
# ToString    Method     string ToString()
# Count       Property   int Count {get;}
# Group       Property   System.Collections.ObjectModel.Collection[psobject] Group {get;}
# Name        Property   string Name {get;}
# Values      Property   System.Collections.ArrayList Values {get;}

# Use it with a real command like Get-Service
Get-Service WinRM |                             # Get the WinRM service
Format-Table                                    # Format the output
# Output:
# Status  Name  DisplayName
# ------  ----  -----------
# Running WinRM Windows Remote Management (WS-Management)
# 
# This is de default output in table format but there are more properties for Get-Service
Get-Service WinRM |                             # Get the WinRM service
Get-Member -MemberType Properties               # Get all the properties
# Output:
# TypeName: System.Service.ServiceController#StartupType

# Name                MemberType    Definition
# ----                ----------    ----------
# Name                AliasProperty Name = ServiceName
# RequiredServices    AliasProperty RequiredServices = ServicesDependedOn
# BinaryPathName      Property      System.String {get;set;}
# CanPauseAndContinue Property      bool CanPauseAndContinue {get;}
# CanShutdown         Property      bool CanShutdown {get;}
# CanStop             Property      bool CanStop {get;}
# Container           Property      System.ComponentModel.IContainer Container {get;}
# DelayedAutoStart    Property      System.Boolean {get;set;}
# DependentServices   Property      System.ServiceProcess.ServiceController[] DependentServices {get;}
# Description         Property      System.String {get;set;}
# DisplayName         Property      string DisplayName {get;set;}
# MachineName         Property      string MachineName {get;set;}
# ServiceHandle       Property      System.Runtime.InteropServices.SafeHandle ServiceHandle {get;}
# ServiceName         Property      string ServiceName {get;set;}
# ServicesDependedOn  Property      System.ServiceProcess.ServiceController[] ServicesDependedOn {get;}
# ServiceType         Property      System.ServiceProcess.ServiceType ServiceType {get;}
# Site                Property      System.ComponentModel.ISite Site {get;set;}
# StartType           Property      System.ServiceProcess.ServiceStartMode StartType {get;}
# StartupType         Property      Microsoft.PowerShell.Commands.ServiceStartupType {get;set;}
# Status              Property      System.ServiceProcess.ServiceControllerStatus Status {get;}
# UserName            Property      System.String {get;set;}

# Get a list of all services and group them by the StartType property
Get-Service |                                   # Get a list of all services
Group-Object StartType -NoElement |             # Group them by StartType, with NoElement it will show only Count and Name
Format-Table                                    # Format the output
# Output:
# Count Name
# ----- ----
#   111 Automatic
#   206 Manual
#    13 Disabled

