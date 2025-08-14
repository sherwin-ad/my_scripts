param(
    [Parameter(Mandatory)]
    [string]$Name,
		
		[Parameter()]
    [datetime]$StartDate,
		
		[Parameter()]
    [int]$BuildingCode = 1
)

## Convert the start date to a string
$StartDateString = $StartDate.ToString('yyyy-MM-dd')

# Formulate the description with StartDate and BuildingCode
$Description = "Account Start Date: $StartDateString, Building Code: $BuildingCode"

# Create a new local user account
try {
    $NewUser = @{
        Name        = $Name
        Description = $Description
		NoPassword  = $true
        # Include other parameters like Password, etc., if required
    }
    New-LocalUser @NewUser

    Write-Host "User account for '$Name' created successfully. Start Date: $StartDateString, Building Code: $BuildingCode"
} catch {
    Write-Host "Error creating user account: $_"
}
