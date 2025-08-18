## From Clip: Understanding if/else/elseif Logic

$diskTotal = 100GB
$diskUsed = 90GB  
$usage = $diskUsed / $diskTotal * 100
$usage

if ($usage -gt 85) {
    Write-Host "Disk utilization over 85%. Clearing temp files."
}

$diskUsed = 80GB
$usage = $diskUsed / $diskTotal * 100

if ($usage -gt 85) {
    Write-Host "Disk utilization over 85%. Clearing temp files." 
}

if ($usage -gt 85) {
    Write-Host "Disk utilization over 85%. Clearing temp files."
} elseif ($usage -gt 75) {
    Write-Host "Disk utilization over 75%. Clearing browser cache."   
}


#region
$diskTotal = 100GB
$diskUsed = 90GB
$usage = $diskUsed / $diskTotal * 100

if ($usage -gt 85) {
  # Compress logs
  Write-Host "Uh oh! Disk usage over 85%! Removing temp files."
} elseif ($usage -gt 75) {
  # Clear browser caches
  Write-Host "Uh oh! Disk usage over 75%! Clearing browser cache."
} elseif ($usage -gt 60) {
  # Remove temp files
  Write-Host "Uh oh! Disk usage over 60%! Compressing logs."
}
#endregion