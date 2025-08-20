## Displaying current date and time
Get-Date

## getting type
(Get-Date).GetType()

## Formatting current date and time
Get-Date -Format "yyyy-MM-dd HH:mm:ss"
#endregion

#region Working with Timespan Objects
## Creating a Timespan object
New-TimeSpan -Days 10 -Hours 2 -Minutes 30
#endregion


## Defining start and end dates
$startDate = Get-Date "2010-06-15"
$endDate = Get-Date

## Displaying start and end dates
$startDate
$endDate

## Calculating the timespan between dates
$timeDiff = New-TimeSpan -Start $startDate -End $endDate

## Displaying time difference with too many decimal digits
$timeDiff

## Displaying time difference in total days, rounded down
[int]$timeDiff.TotalDays
#endregion
