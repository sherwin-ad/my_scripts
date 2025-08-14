## From Clip: Demo: Building a Structured Script

$tempPath = "C:\Windows\Temp\*"
$spoolerService = "Spooler"

# Checking disk space
$diskSpace = Get-PSDrive
                
# Restarting the print spooler service
Restart-Service -Name $spoolerService  
$spoolerStatus = Get-Service -Name $spoolerService | Select-Object Status

# Clearing temporary files
Remove-Item -Path $tempPath -Recurse  

[pscustomobject]@{
    DiskSpace = $diskSpace
    SpoolerServiceStatus = $spoolerStatus.Status
    TempFilesCleared = $tempFilesRemaining.Count -eq 0 
}