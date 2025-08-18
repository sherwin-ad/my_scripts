[CmdletBinding()]
param (
    [Parameter(Mandatory,ValueFromPipeline)]
    [String]$Name
)

process {
    $Name.ToLower().Replace("smith", "Smythe").ToUpper()
}


<#
How to use the script

$ Get-Content -Path .\employees.txt | .\Set-NameStandardization.ps1
"ALICE SMYTHE"
"BOB JOHNSON"
"CARLA RAY"
#>