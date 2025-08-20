[CmdletBinding()]
param (
    [Parameter()]
    [ValidateRange(1, 12)]
    [int]$Month,
    [Parameter(Mandatory)]
    [ValidateSet("Income", "Expense", "All")]
    [string]$AccountType
)

try {
    $availableReports = @{
        'Expense' = @{
            4 = 'some uber sensitive stuff here for April'
        }
    }
Write-Host "Analyzing financial data for Month: $Month " and Account Type: Expense
Write-Host '-----'
Write-Host "Report: $($availableReports[$AccountType][$Month])"
Write-Host '-----'

Write-Verbose "Data analysis complete."
}
catch {
    Write-Host "Error in data analysis"
}


<#  
.\Find-FinancialData.ps1 -Month 13 -AccountType 'Expense'

Find-FinancialData.ps1: Cannot validate argument on parameter 'Month'. The 13 argument is greater than the maximum allowed range of 12. Supply an argument that is less than or equal to 12 and then try the command again.
#>

<#
.\Find-FinancialData.ps1 -Month 4 -AccountType 'Expense' 
Analyzing financial data for Month: 4  and Account Type: Expense
-----
Report: some uber sensitive stuff here for April
-----
Data analysis complete.
#>

<#
 .\Find-FinancialData.ps1 -Month 4

cmdlet Find-FinancialData.ps1 at command pipeline position 1
Supply values for the following parameters:
AccountType:
#>

<#
.\Find-FinancialData.ps1 -Month 4 -AccountType 'Expense' -Verbose
Analyzing financial data for Month: 4  and Account Type: Expense
-----
Report: some uber sensitive stuff here for April
-----
VERBOSE: Data analysis complete.
#>