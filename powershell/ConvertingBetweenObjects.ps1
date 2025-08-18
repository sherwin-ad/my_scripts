# Example string representing a datetime
$logEntry = "2023-07-15 08:30:00"

## Could use Get-Date to convert from string to datetime object
Get-Date $logEntry

## or use the -as operator. The -as operator could be considered a bit cleaner without using a cmdlet
$logEntry -as [datetime]

#'foo' -as [datetime]

# Get-Date 'foo'


# Forcibly casting the string to datetime
$dateTimeLogEntry = [datetime]$logEntry
$dateTimeLogEntry
#endregion

#region Testing Types with is Operator

# Checking if the original entry is a datetime object
$dateTimeLogEntry -is [datetime]

$dateTimeLogEntry -is [string]
#endregion


#region Converting Numbers to Strings

# Example number
$number = 123

# Converting number to string using ToString method
$number.ToString()

# Converting number to string using casting
[string]$number
#endregion

$errorCode = $number
$errorCode.GetType()

<#
Import-Csv -Path .\sample_app_log.csv | select Timestamp,LogMessage,@{n='ErrorCode';e={[int]$_.ErrorCode}}

Timestamp           LogMessage                         ErrorCode
---------           ----------                         ---------
2023-01-15 08:30:00 Operation completed successfully.        200
2023-01-16 09:45:12 Resource not found.                      404
2023-01-17 11:03:45 Internal server error encountered.       500
2023-01-18 14:20:30 Resource moved temporarily.              302
#>