$servers = Get-Content -Path C:\Servers.txt

$servers[0]
$servers[1]
$servers[2]
$servers[3]

Get-ChildItem -Path "\\$servers[0]\c`$"
Get-ChildItem -Path "\\$servers[1]\c`$"
Get-ChildItem -Path "\\$servers[2]\c`$"
Get-ChildItem -Path "\\$servers[3]\c`$"

foreach ($server in $servers) {
	Write-Host "Listing files from server $server..."
}

$servers | ForEach-Object {
	Write-Host "Listing files from server $_..."
}

$servers.foreach({
	Write-Host "Listing files from server $_..."
})

$array = 1..1000000

$loopTimes = @{
	'ForeachStatement' = $null
	'ForeachCmdlet' = $null
	'ForeachMethod' = $null
}

$loopTimes.ForeachStatement = Measure-Command {
	foreach ($element in $array) {
       # Process the element
	}
}

$loopTimes.ForeachCmdlet = Measure-Command {
	$array | ForEach-Object {
       # Process the element
	}
}

$loopTimes.ForeachMethod = Measure-Command {
	$array.foreach({
       # Process the element
	})
}

$loopTimes
