## From Clip: Demo: Executing and Debugging Your Script

try {

    $tempPath = "C:\Windows\Temp\*"
    $spoolerService = "Spooler"

    # Checking disk space 
    $diskSpace = Get-PSDrive   
    
    # Restarting the print spooler service
    Restart-Service -Name $spoolerService
    $spoolerStatus = Get-Service -Name $spoolerService | Select-Object Status
    
    # Clearing temporary files
    Remove-Item -Path $tempPath -Recurse
    $tempFilesRemaining = Get-Item -Path $tempPath -ErrorAction SilentlyContinue
            
    # Combine the output of all commands into a single object
    [pscustomobject]@{
        DiskSpace = $diskSpace
        SpoolerServiceStatus = $spoolerStatus.Status 
        TempFilesCleared = $tempFilesRemaining.Count -eq 0
    }
} catch {
    Write-Host $_.Exception.Message
}
