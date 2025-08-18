# Powershell Tutorial

**Get-Help**
- cmdlet displays information about PowerShell concepts and commands, including cmdlets, functions, Common Information Model (CIM) commands, workflows, providers, aliases, and scripts.
```
Get-Help Get-Command

NAME
    Get-Command

SYNTAX
    Get-Command [[-ArgumentList] <Object[]>] [-Verb <string[]>] [-Noun <string[]>] [-Module <string[]>] [-FullyQualifiedModule <ModuleSpecification[]>]
    [-TotalCount <int>] [-Syntax] [-ShowCommandInfo] [-All] [-ListImported] [-ParameterName <string[]>] [-ParameterType <PSTypeName[]>]
    [<CommonParameters>]

    Get-Command [[-Name] <string[]>] [[-ArgumentList] <Object[]>] [-Module <string[]>] [-FullyQualifiedModule <ModuleSpecification[]>] [-CommandType
    {Alias | Function | Filter | Cmdlet | ExternalScript | Application | Script | Configuration | All}] [-TotalCount <int>] [-Syntax] [-ShowCommandInfo]
    [-All] [-ListImported] [-ParameterName <string[]>] [-ParameterType <PSTypeName[]>] [-UseFuzzyMatching] [-FuzzyMinimumDistance <uint>]
    [-UseAbbreviationExpansion] [<CommonParameters>]


ALIASES
    gcm


REMARKS
    Get-Help cannot find the Help files for this cmdlet on this computer. It is displaying only partial help.
        -- To download and install Help files for the module that includes this cmdlet, use Update-Help.
        -- To view the Help topic for this cmdlet online, type: "Get-Help Get-Command -Online" or
           go to https://go.microsoft.com/fwlink/?LinkID=2096579.
```
To view the Help topic for this cmdlet online
```
Get-Help Get-Command -Online
```
**Get-Command**
- cmdlet gets all commands that are installed on the computer, including cmdlets, aliases, functions, filters, scripts, and applications.

```
Get-Command Get-Se*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Get-SecureBootPolicy                               2.0.0.0    SecureBoot
Cmdlet          Get-SecureBootUEFI                                 2.0.0.0    SecureBoot
Cmdlet          Get-SecureRandom                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Service                                        7.0.0.0    Microsoft.PowerShell.Management
```
**Get-PSDrive**
- Get drives in the current session
```
Get-PSDrive

Name           Used (GB)     Free (GB) Provider      Root                                                                                                 CurrentLocation
----           ---------     --------- --------      ----                                                                                                 ---------------
Alias                                  Alias                                                                                                                             
C                 282.29        107.60 FileSystem    C:\                                                                                                 Windows\system32
Cert                                   Certificate   \                                                                                                                   
D                 375.49        187.75 FileSystem    D:\                                                                                                                 
Env                                    Environment                                                                                                                       
Function                               Function                                                                                                                          
HKCU                                   Registry      HKEY_CURRENT_USER                                                                                                   
HKLM                                   Registry      HKEY_LOCAL_MACHINE                                                                                                  
Variable                               Variable                                                                                                                          
WSMan                                  WSMan                                 
```



**What Is the Print Spooler?**
The Print Spooler service manages print jobs sent to the printer. Restarting it can fix issues like:
• 	Stuck print jobs
• 	Printer not responding
• 	Unable to add or remove printers

```
Restart-Service -Name "Spooler"
```

The command  is a PowerShell command used to restart the Print Spooler service on a Windows system. Here's what it does and how to use it properly:



```
Remove-Item -Path "C:\Windows\Temp\*" -Recurse
```
The command  is a PowerShell command used to delete all files and folders inside the  directory. 

**PowerShell Execution Policy Scopes**
Execution policies determine the conditions under which PowerShell loads configuration files and runs scripts. 

These policies can be set at different scopes:
**1. MachinePolicy**
- Set by Group Policy for all users on the computer.
- Highest precedence.

**2. UserPolicy**
- Set by Group Policy for the current user.
- Second highest precedence.

**3. Process**
- Applies only to the current PowerShell session.
- Set using Set-ExecutionPolicy -Scope Process.

**4. CurrentUser**
- Applies to the current user.
- Set using Set-ExecutionPolicy -Scope CurrentUser.

**5. LocalMachine**
- Applies to all users on the computer.
- Set using Set-ExecutionPolicy -Scope LocalMachine.

```
Get-ExecutionPolicy -List

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process          Bypass
  CurrentUser       AllSigned
 LocalMachine       AllSigned
```

```
Test-Path $PROFILE
False
```
will check whether your PowerShell profile script exists at the path stored in $PROFILE.
What It Does
- Returns True if the profile file exists.
- Returns False if it doesn't exist.

If it returns False, you can create the profile file using:
```
New-Item -Path $PROFILE -ItemType File -Force
```

This appends the alias definition to your profile script.
```
Add-Content -Path $profile -Value 'Set-Alias ll Get-ChildItem'
```

Display all the properties of the $PROFILE object
```
$profile | Select *

OR 

$PROFILE | Select-Object *

AllUsersAllHosts       : C:\Program Files\PowerShell\7\profile.ps1
AllUsersCurrentHost    : C:\Program Files\PowerShell\7\Microsoft.PowerShell_profile.ps1
CurrentUserAllHosts    : C:\Users\sherwinowen\Documents\PowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\sherwinowen\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
Length                 : 74
```

Edit AllUserAllHosts profile
```
notepad $profile.AllUsersAllHosts
```