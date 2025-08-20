[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [String]$EmployeeStartDate
)

$startDate = Get-Date $EmployeeStartDate
$today = Get-Date

$tenure = New-TimeSpan -Start $startDate -End $today
[int]$tenure.TotalDays

<#
.\Calculating_Tenure.ps1 -EmployeeStartDate '06-01-15'
3732
#>