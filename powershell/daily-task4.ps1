## From Clip: Demo: Refining Scripts

Get-PSDrive -Name C | Select-Object Free

Get-PSDrive -Name C | Get-Member  

Get-PSDrive -Name C | Select-Object -ExpandProperty Free 

$freeSpaceC = Get-PSDrive -Name C | Select-Object -ExpandProperty Free
$freeSpaceC  

[math]::Round($freeSpaceC / 1GB)

Write-Host "Drive C free space: " + $freeSpaceC + " GB" 