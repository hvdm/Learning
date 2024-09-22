# Using Invoke-RestMethod to get some data
Invoke-RestMethod -Method Get https://devblogs.microsoft.com/powershell/feed/ 
# Output:
# title       : PSResourceGet support for Azure Container Registry (ACR) is in Preview
# link        : https://devblogs.microsoft.com/powershell/psresourceget-support-for-azure-container-registry- 
#               acr-is-in-preview/
# comments    : {https://devblogs.microsoft.com/powershell/psresourceget-support-for-azure-container-registry 
#               -acr-is-in-preview/#comments, 2}
# creator     : creator
# pubDate     : Tue, 02 Apr 2024 22:37:11 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded
# commentRss  : https://devblogs.microsoft.com/powershell/psresourceget-support-for-azure-container-registry- 
#               acr-is-in-preview/feed/

# title       : PowerShell and OpenSSH team investments for 2024
# link        : https://devblogs.microsoft.com/powershell/powershell-and-openssh-team-investments-for-2024/   
# comments    : {https://devblogs.microsoft.com/powershell/powershell-and-openssh-team-investments-for-2024/# 
#               comments, 1}
# creator     : creator
# pubDate     : Mon, 05 Feb 2024 19:08:41 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded
# commentRss  : https://devblogs.microsoft.com/powershell/powershell-and-openssh-team-investments-for-2024/fe 
#               ed/

# title       : PowerShell 7.4 General Availability
# link        : https://devblogs.microsoft.com/powershell/powershell-7-4-general-availability/
# creator     : creator
# pubDate     : Thu, 16 Nov 2023 18:56:58 +0000
# category    : category
# guid        : guid
# description : description
# encoded     : encoded

# title       : PowerShell 7.4 Release Candidate 1
# link        : https://devblogs.microsoft.com/powershell/powershell-7-4-release-candidate-1/
# comments    : {https://devblogs.microsoft.com/powershell/powershell-7-4-release-candidate-1/#comments, 2}   
# creator     : creator
# pubDate     : Tue, 31 Oct 2023 01:05:13 +0000
# category    : category
# guid        : guid
# description : description
# encoded     : encoded
# commentRss  : https://devblogs.microsoft.com/powershell/powershell-7-4-release-candidate-1/feed/

# title       : PowerShell Extension for Visual Studio Code Fall 2023 Update
# link        : https://devblogs.microsoft.com/powershell/powershell-extension-for-visual-studio-code-fall-20 
#               23-update/
# creator     : creator
# pubDate     : Wed, 25 Oct 2023 22:06:44 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded

# title       : PSResourceGet is generally available
# link        : https://devblogs.microsoft.com/powershell/psresourceget-is-generally-available/
# comments    : {https://devblogs.microsoft.com/powershell/psresourceget-is-generally-available/#comments, 5} 
# creator     : creator
# pubDate     : Mon, 09 Oct 2023 18:19:07 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded
# commentRss  : https://devblogs.microsoft.com/powershell/psresourceget-is-generally-available/feed/

# title       : PSReadLine 2.3.4 GA Release
# link        : https://devblogs.microsoft.com/powershell/psreadline-2-3-4-ga-release/
# creator     : creator
# pubDate     : Tue, 03 Oct 2023 18:21:11 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded

# title       : PowerShellGet 3.0.22-beta22 is now available
# link        : https://devblogs.microsoft.com/powershell/powershellget-3-0-22-beta22-is-now-available/       
# creator     : creator
# pubDate     : Wed, 20 Sep 2023 18:30:37 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded

# title       : Announcing PowerShell Crescendo 1.1.0 General Availability (GA)
# link        : https://devblogs.microsoft.com/powershell/announcing-powershell-crescendo-1-1-0/
# creator     : creator
# pubDate     : Tue, 12 Sep 2023 15:13:59 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded

# title       : PSResourceGet Release Candidate is Now Available
# link        : https://devblogs.microsoft.com/powershell/psresourceget-release-candidate-is-now-available/   
# comments    : {https://devblogs.microsoft.com/powershell/psresourceget-release-candidate-is-now-available/# 
#               comments, 1}
# creator     : creator
# pubDate     : Thu, 07 Sep 2023 20:52:47 +0000
# category    : {category, category}
# guid        : guid
# description : description
# encoded     : encoded
# commentRss  : https://devblogs.microsoft.com/powershell/psresourceget-release-candidate-is-now-available/fe 
#               ed/

# In the Invoke-RestMethod PowerShell returned objects


# Doing the same but place the results into a variable
$PowerShellBlog = Invoke-RestMethod -Method Get https://devblogs.microsoft.com/powershell/feed/ 

$PowerShellBlog | Get-Member
# Output:
#    TypeName: System.Xml.XmlElement

# Name                 MemberType            Definition
# ----                 ----------            ----------
# ToString             CodeMethod            static string XmlNode(psobject instance)
# AppendChild          Method                System.Xml.XmlNode AppendChild(System.Xml.XmlNode newChild)      
# Clone                Method                System.Xml.XmlNode Clone(), System.Object ICloneable.Clone()     
# CloneNode            Method                System.Xml.XmlNode CloneNode(bool deep)
# CreateNavigator      Method                System.Xml.XPath.XPathNavigator CreateNavigator(), System.Xml.X… 
# Equals               Method                bool Equals(System.Object obj)
# GetAttribute         Method                string GetAttribute(string name), string GetAttribute(string lo… 
# GetAttributeNode     Method                System.Xml.XmlAttribute GetAttributeNode(string name), System.X… 
# GetElementsByTagName Method                System.Xml.XmlNodeList GetElementsByTagName(string name), Syste… 
# GetEnumerator        Method                System.Collections.IEnumerator GetEnumerator(), System.Collecti… 
# GetHashCode          Method                int GetHashCode()
# GetNamespaceOfPrefix Method                string GetNamespaceOfPrefix(string prefix)
# GetPrefixOfNamespace Method                string GetPrefixOfNamespace(string namespaceURI)
# GetType              Method                type GetType()
# HasAttribute         Method                bool HasAttribute(string name), bool HasAttribute(string localN… 
# InsertAfter          Method                System.Xml.XmlNode InsertAfter(System.Xml.XmlNode newChild, Sys… 
# InsertBefore         Method                System.Xml.XmlNode InsertBefore(System.Xml.XmlNode newChild, Sy… 
# Normalize            Method                void Normalize()
# PrependChild         Method                System.Xml.XmlNode PrependChild(System.Xml.XmlNode newChild)     
# RemoveAll            Method                void RemoveAll()
# RemoveAllAttributes  Method                void RemoveAllAttributes()
# RemoveAttribute      Method                void RemoveAttribute(string name), void RemoveAttribute(string … 
# RemoveAttributeAt    Method                System.Xml.XmlNode RemoveAttributeAt(int i)
# RemoveAttributeNode  Method                System.Xml.XmlAttribute RemoveAttributeNode(System.Xml.XmlAttri… 
# RemoveChild          Method                System.Xml.XmlNode RemoveChild(System.Xml.XmlNode oldChild)      
# ReplaceChild         Method                System.Xml.XmlNode ReplaceChild(System.Xml.XmlNode newChild, Sy… 
# SelectNodes          Method                System.Xml.XmlNodeList SelectNodes(string xpath), System.Xml.Xm… 
# SelectSingleNode     Method                System.Xml.XmlNode SelectSingleNode(string xpath), System.Xml.X… 
# SetAttribute         Method                void SetAttribute(string name, string value), string SetAttribu… 
# SetAttributeNode     Method                System.Xml.XmlAttribute SetAttributeNode(System.Xml.XmlAttribut… 
# Supports             Method                bool Supports(string feature, string version)
# WriteContentTo       Method                void WriteContentTo(System.Xml.XmlWriter w)
# WriteTo              Method                void WriteTo(System.Xml.XmlWriter w)
# Item                 ParameterizedProperty System.Xml.XmlElement Item(string name) {get;}, System.Xml.XmlE… 
# category             Property              System.Object[] category {get;}
# commentRss           Property              string commentRss {get;set;}
# comments             Property              System.Object[] comments {get;}
# creator              Property              System.Xml.XmlElement creator {get;}
# description          Property              System.Xml.XmlElement description {get;}
# encoded              Property              System.Xml.XmlElement encoded {get;}
# guid                 Property              System.Xml.XmlElement guid {get;}
# link                 Property              string link {get;set;}
# pubDate              Property              string pubDate {get;set;}
# title                Property              string title {get;set;}

# Powershell returned a System.Xml.XmlElement object
# Select the title and link
$PowerShellBlog | Select-Object title, link | Format-Table
# Output:
# title                                                                  link
# ---- - ----
# PSResourceGet support for Azure Container Registry (ACR) is in Preview https://devblogs.microsoft.com/powe… 
# PowerShell and OpenSSH team investments for 2024                       https://devblogs.microsoft.com/powe… 
# PowerShell 7.4 General Availability                                    https://devblogs.microsoft.com/powe… 
# PowerShell 7.4 Release Candidate 1                                     https://devblogs.microsoft.com/powe… 
# PowerShell Extension for Visual Studio Code Fall 2023 Update           https://devblogs.microsoft.com/powe… 
# PSResourceGet is generally available                                   https://devblogs.microsoft.com/powe… 
# PSReadLine 2.3.4 GA Release                                            https://devblogs.microsoft.com/powe… 
# PowerShellGet 3.0.22-beta22 is now available                           https://devblogs.microsoft.com/powe… 
# Announcing PowerShell Crescendo 1.1.0 General Availability (GA)        https://devblogs.microsoft.com/powe… 
# PSResourceGet Release Candidate is Now Available                       https://devblogs.microsoft.com/powe… 

# Get same data from the github API
Invoke-RestMethod -Method Get -Uri https://api.github.com/users/mattallford
# # Output:
# login               : mattallford
# id                  : 16998139
# node_id             : MDQ6VXNlcjE2OTk4MTM5
# avatar_url          : https://avatars.githubusercontent.com/u/16998139?v=4
# gravatar_id         : 
# url                 : https://api.github.com/users/mattallford
# html_url            : https://github.com/mattallford
# followers_url       : https://api.github.com/users/mattallford/followers
# following_url       : https://api.github.com/users/mattallford/following { /other_user }
# gists_url           : https://api.github.com/users/mattallford/gists { /gist_id }
# starred_url         : https://api.github.com/users/mattallford/starred { /owner } { /repo }
# subscriptions_url   : https://api.github.com/users/mattallford/subscriptions
# organizations_url   : https://api.github.com/users/mattallford/orgs
# repos_url           : https://api.github.com/users/mattallford/repos
# events_url          : https://api.github.com/users/mattallford/events { /privacy }
# received_events_url : https://api.github.com/users/mattallford/received_events
# Get-Content                : User
# site_admin          : False
# name                : Matt Allford
# company             : 
# blog                : https://mattallford.com
# Get-location            : Tasmania
# email               : 
# hireable            : 
# bio                 : 
# twitter_username    : mattallford
# public_repos        : 38
# public_gists        : 4
# followers           : 38
# following           : 2
# created_at          : 1-2-2016 03:49:21
# updated_at          : 6-9-2024 11:34:51

# Place the same url into a variable
$Github = Invoke-RestMethod -Method Get -Uri https://api.github.com/users/mattallford
$Github | Get-Member
# Output:
#    TypeName: System.Management.Automation.PSCustomObject

# Name                MemberType   Definition
# ----                ----------   ----------
# Equals              Method       bool Equals(System.Object obj)
# GetHashCode         Method       int GetHashCode()
# GetType             Method       type GetType()
# ToString            Method       string ToString()
# avatar_url          NoteProperty string avatar_url=https://avatars.githubusercontent.com/u/16998139?v=4     
# bio                 NoteProperty object bio=null
# blog                NoteProperty string blog=https://mattallford.com
# company             NoteProperty object company=null
# created_at          NoteProperty datetime created_at=1-2-2016 03:49:21
# email               NoteProperty object email=null
# events_url          NoteProperty string events_url=https://api.github.com/users/mattallford/events{/privac… 
# followers           NoteProperty long followers=38
# followers_url       NoteProperty string followers_url=https://api.github.com/users/mattallford/followers    
# following           NoteProperty long following=2
# following_url       NoteProperty string following_url=https://api.github.com/users/mattallford/following{/… 
# gists_url           NoteProperty string gists_url=https://api.github.com/users/mattallford/gists{/gist_id}  
# gravatar_id         NoteProperty string gravatar_id=
# hireable            NoteProperty object hireable=null
# html_url            NoteProperty string html_url=https://github.com/mattallford
# id                  NoteProperty long id=16998139
# location            NoteProperty string location=Tasmania
# login               NoteProperty string login=mattallford
# name                NoteProperty string name=Matt Allford
# node_id             NoteProperty string node_id=MDQ6VXNlcjE2OTk4MTM5
# organizations_url   NoteProperty string organizations_url=https://api.github.com/users/mattallford/orgs     
# public_gists        NoteProperty long public_gists=4
# public_repos        NoteProperty long public_repos=38
# received_events_url NoteProperty string received_events_url=https://api.github.com/users/mattallford/recei… 
# repos_url           NoteProperty string repos_url=https://api.github.com/users/mattallford/repos
# site_admin          NoteProperty bool site_admin=False
# starred_url         NoteProperty string starred_url=https://api.github.com/users/mattallford/starred{/owne… 
# subscriptions_url   NoteProperty string subscriptions_url=https://api.github.com/users/mattallford/subscri… 
# twitter_username    NoteProperty string twitter_username=mattallford
# type                NoteProperty string type=User
# updated_at          NoteProperty datetime updated_at=6-9-2024 11:34:51
# url                 NoteProperty string url=https://api.github.com/users/mattallford

# It returned a PSCustomObject
