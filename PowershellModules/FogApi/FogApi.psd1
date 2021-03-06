#
# Module manifest for module 'FogApi'
#
# Generated by: jfullmer
#
# Generated on: 06/05/2018
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'FogApi.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.6'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = '7aa922fa-bb4f-46a0-a478-684e9535c65d'
    
    # Author of this module
    Author = 'JJ Fullmer'
    
    # Company or vendor of this module
    CompanyName = 'FOG Project'
    
    # Copyright statement for this module
    Copyright = '(c) 2018 JJ Fullmer. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = @"
    To install this module you need at least powershell v3, was created with 5.1 and intended to be cross platform compatible with powershell v6
    To Install this module follow these steps
    * Easiest method: Install from PSGallery https://www.powershellgallery.com/packages/FogApi `Install-Module -name fogApi` 
    
    * Manual Method:
    * download the zip of this repo https://github.com/FOGProject/fog-community-scripts/archive/master.zip and extract it
        * Or clone the repo using your favorite git tool, you just need the FogApi Folder this readme is in
    * Copy the FogApi folder this Readme file is in to...
        * For Windows Powershell v3-v5.1
            * C:\Program Files\WindowsPowershell\Modules
        * For Windows Powershell v6+
            * C:\Program Files\PowerShell\6-preview\Modules
                * 6-Preview may need to be replaced with whatever current version you have installed
        * For Linux Powershell v6+
            * /opt/microsoft/powershell/6.1.0-preview.2/Modules
                * 6.1.0-preview.2 may need to be replaced with whatever current version you have installed
        * For Mac Powershell v6+ (untested)
            * /usr/local/microsoft/powershell/6.x/Modules
                * 6.x should be replaced with whatever most current version you are using
                * I haven't tested this on a mac, the module folder may be somewhere else
                this is based on where it is in other powershell 6 installs
    * Open a powershell command prompt (I always run as admin, unsure if it's required)
    * Run `Import-Module FogApi`
    
    The module is now installed. 
    The first time you try to run a command the settings.json file will automatically open
    in notepad on windows, nano on linux, or TextEdit on Mac
    You can also open the settings.json file and edit it manually before running your first command.
    The default settings are explanations of where to find the proper settings since json can't have comments
    
    Once the settings are set you can have a jolly good time utilzing the fog documentation 
    found here https://news.fogproject.org/simplified-api-documentation/ that was used to model the parameters
    
    i.e.
    
    Get-FogObject has a type param that validates to object, objectactivetasktype, and search as those are the options given in the documentation.
    Each of those types validates (which means autocompletion) to the core types listed in the documentation.
    So if you typed in `Get-FogObject -Type object -coreObject  h` and then started hitting tab, it would loop through the possible core objects you can get from the api that start with 'h' such as history, host, etc.
    
    see also the fogforum thread for the module https://forums.fogproject.org/topic/12026/powershell-api-module/2 
"@
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '3.0'
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = '*'
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = '*'
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = '*'
    
    # DSC resources to export from this module
    # DscResourcesToExport = @()
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    FileList = @('FogApi.psd1','FogApi.psm1','settings.json')
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Fog','Restful','API','imaging','fogproject')
    
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/FOGProject/fog-community-scripts/blob/master/LICENSE'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/FOGProject/fog-community-scripts/tree/master/PowershellModules/FogApi'
    
            # A URL to an icon representing this module.
            IconUri = 'https://fogproject.org/images/favicon.ico'
    
            # ReleaseNotes of this module
            ReleaseNotes = "Release Versions:
                v 1.5 - Added dynamic parameters and added get-fogserversettings and set-fogserversettings to allow for setting the api keys and server name in the shell
                            One known issue with the dynamic parameters is that they currently are not working as expected with positions they have to be named. i.e. you have to say `get-fogobject -type object -coreObject host` not `Get-FogObject object host` like I wanted
                            The auto complete works for positional parameters but the function doesn't seem to think there's a vaule for the parameter. 
                v 1.3 - added better description and links, fixed new-fogobject to not require id for all POST api calls as there is no id yet for new items.
                v 1.2 - Initial Release, allow for easy manipulation of FOG server data with powershell objects'"
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    HelpInfoURI = 'https://forums.fogproject.org/topic/12026/powershell-api-module'
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
    }
    
    
# SIG # Begin signature block
# MIILGQYJKoZIhvcNAQcCoIILCjCCCwYCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUzCw3cboPA9320IBfLDwTZe2Y
# tn+gggeAMIIHfDCCBWSgAwIBAgITXQAAAEy4LtSLbbnUTQAAAAAATDANBgkqhkiG
# 9w0BAQsFADBLMRMwEQYKCZImiZPyLGQBGRYDY29tMR8wHQYKCZImiZPyLGQBGRYP
# YXJyb3doZWFkZGVudGFsMRMwEQYDVQQDEwpBcnJvd1NlY0NhMB4XDTE4MDYwMTE2
# NTkwOVoXDTIwMDYwMTE3MDkwOVowRTEdMBsGA1UEChMUQXJyb3doZWFkIERlbnRh
# bCBMYWIxJDAiBgNVBAMTG0Fycm93aGVhZCBJVCBTY3JpcHQgTW9ua2V5czCCAiIw
# DQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMcAzhPOrGMSjPHMx2YOHav/AI+1
# NkulmUZjllvNIIRUJrOZ/BkFaLXIigoo+d6BlW+nJFy7d31qiXck7YePKCZfVmtv
# r22quLO/VubM2EthyXTM4PcYdrtBeRNF46XB8tGm1OCFU7WG/3q7fRjciySpFvG3
# oevlNr5XJd9QNe6w1YYNWJfrZsTsMcMTX31nEeR2QhVKyFw0yMjIJLeChZT++fi/
# Q+z1yVQpN01ZgjX1mCmLJiQba11SlesG+zJuebhm6utfNs5K5YU9Fh2ZsBCXozoM
# s+IN683r8t+yRP7Bu9t5+Btia95My8L3i2119zQ6HjAmJGFnlRqn6AtBTj9FjO7+
# 6IMURZXFmlelDhVYq04U8BBNF7HvycOMur0tgYKgveK4YmZNB6BqBU/JyFlbVHOU
# KSgtpKMJDPL9d2KvABiFiAagXJznapRkl6GXPe5Ui8Zi2l2CUdmvUkY5OuUif0RD
# tgncPzzWdswr+2CRZafHenPc3FAdkscEMQNI0slEk9Kd9+Jv0BFxklxbJDpW3/jT
# NQnFGs5nOkNY0u36oONL4sPkn+SMipMPZbDl1+/hZnDISFsPdSxRm6DxG+yGn/bw
# rpQglTMfWIUDstziofGCfUXFwsxsHIU0Cdv10OumrRfa76zoDrU83nRxZlJQ62o8
# kP3xxnvtoVRi8TyxAgMBAAGjggJdMIICWTA6BgkrBgEEAYI3FQcELTArBiMrBgEE
# AYI3FQiHm6N1hYL2QYWBDIOug2iExrVZeNX2QIitQAIBZAIBAzATBgNVHSUEDDAK
# BggrBgEFBQcDAzAOBgNVHQ8BAf8EBAMCBsAwGwYJKwYBBAGCNxUKBA4wDDAKBggr
# BgEFBQcDAzAdBgNVHQ4EFgQUYKhr8Wj4IN0J0qozc3wHQ92ZOYkwHwYDVR0jBBgw
# FoAUUVk537Vv3WyyDq8JiPiXIoo4Q+UwgdEGA1UdHwSByTCBxjCBw6CBwKCBvYaB
# umxkYXA6Ly8vQ049QXJyb3dTZWNDYSxDTj1hcnJvd3NlYyxDTj1DRFAsQ049UHVi
# bGljJTIwS2V5JTIwU2VydmljZXMsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlv
# bixEQz1hcnJvd2hlYWRkZW50YWwsREM9Y29tP2NlcnRpZmljYXRlUmV2b2NhdGlv
# bkxpc3Q/YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludDCBxAYI
# KwYBBQUHAQEEgbcwgbQwgbEGCCsGAQUFBzAChoGkbGRhcDovLy9DTj1BcnJvd1Nl
# Y0NhLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBTZXJ2aWNlcyxDTj1TZXJ2aWNl
# cyxDTj1Db25maWd1cmF0aW9uLERDPWFycm93aGVhZGRlbnRhbCxEQz1jb20/Y0FD
# ZXJ0aWZpY2F0ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3Jp
# dHkwDQYJKoZIhvcNAQELBQADggIBAJb67qysV0lRIutM7odRWhwQkfnDHIQMGWJu
# f5OIlWxjVFHjhrQZWQy8EmLqDB3o9xDXahNG91f9AWfSjw9lmYZXe6E70Z9B40ve
# 4t+YyNVz1aQX5Lc2yAamSX20MtmmP8XX3C+G1RiIFWXYGYQrxXDNx9YECygftw3I
# o4IAQv0vdQJkYt/nFF9jNXzlFPYZpV+i8u7PLDIwBtmJ3aMqj35kEnD07oojZtwE
# ZWt14L4JGyApTCivAh+TTU29uPp1axQxujC0h90GyjfM1RM5Y9uUYMcHXvX8f9oQ
# EPdz9sIEUY6TOeQQP/aCjd8TJ0G+MDvO1BI5nKwDCW5ysckQIG6bsA1tQUbl1MJj
# 0CuH7fGjSVHvPOMFqtXy9Qfs0TvI3NsQJBu3LZwpM49z4tL9yGbXxM0IgTShdHFl
# ++XHQe7IlkFmk5gpFTKEXA4AmVh0NvFJA1EdIWK/4xrH4Kd4VQgjLch4Zd+RGHmo
# 8zntyx31ykMYsHONk3pYembVBA0Z3VHwfG6crf/a3L1PkvmBXL/0Vx7Ypjwtd9PD
# iGLT2Pi0Xnzas94Mq9uLiABHHMUI1Bw7ALbUAuztZy8LPFEoFXn+ik+izhKhj+Zs
# SF4l5h+mUS+hv6mkSGieZLunvAZEYqis48w4Jhn2zw23LEBN+wUvjLNqBiHyxFKC
# TLk1RyxqMYIDAzCCAv8CAQEwYjBLMRMwEQYKCZImiZPyLGQBGRYDY29tMR8wHQYK
# CZImiZPyLGQBGRYPYXJyb3doZWFkZGVudGFsMRMwEQYDVQQDEwpBcnJvd1NlY0Nh
# AhNdAAAATLgu1IttudRNAAAAAABMMAkGBSsOAwIaBQCgeDAYBgorBgEEAYI3AgEM
# MQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQB
# gjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBTVv0hQNP2E36wO
# ND9PxP+ZyWgXTjANBgkqhkiG9w0BAQEFAASCAgCb1nRdo67/LqwcdO/T6cg7QtTW
# NI9cLK5SQsZjr1x5BGBzw7oFWk0Hs+BMPXXeEnsAWzi6moKkMkOnlsEeghTGMRYA
# 3QA/+yrg0WqgSsp3C9mbkKWQkqZQLdURuU5loXkTYqXc+eqPgGg14I9pm+0/8Ar+
# 0Ryol+03a96nO+94URWiFy9OX2dYSK9hhOkWkr471pCAzL+IjKNbtkJvyDnuCHHp
# ojrWOYsocFWH+cQ0bUGNVgt+bkin0GypUfhFVveuH3QRikxwLLQjGFjkL25LwDw0
# e3o8M2zxydKjODa1nvXxAqCLG1yF9/vJnfhrEMe1kk6vOBjZjTis3Y6yW3Llo/s2
# zBzDz56IKzljnkyQ5OpfGiRxO3z659HXm7i/8Uv7ibWsYI3gWftVF4wnZMQRJx4i
# PVMCwzqYCALylrSXft9B3TiNZJbwh+W6v1wtsSJVsKBgFrCBnF/SYK79cljYERsc
# 2PYamfJgZt/A4K+RsTiMtU/Pz71GBbr1XvNHfPfE9LCg2sPF+fLF95RWW6/WD8MB
# +OidyZRTnCVsIvNM1fMMwNqIPaElJQzv+Aai3C/HIYPkB+TzF+n3MiZberNqVX+E
# SLpiil56bSu22P7rnZoW2kMrWPHbDEAWO9h9dSwj+0uEvQGQMfOnwj2jk5hrAqHH
# /WHlNN7gRpp3QQpJPw==
# SIG # End signature block
