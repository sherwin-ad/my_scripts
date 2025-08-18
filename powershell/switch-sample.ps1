$usage = 10

switch ($usage) {
  {$_ -gt 85} {
      Write-Host "Uh oh! Disk usage over 85%! Removing temp files."
      #Remove-TempFiles
			break
  }
  {$_ -gt 75} {
      Write-Host "Uh oh! Disk usage over 75%! Clearing browser cache."
      #Clear-BrowserCache
			break
  }  
  {$_ -gt 60} {
      Write-Host "Uh oh! Disk usage over 60%! Compressing logs."
      #Compress-Logs
			break
  }
  default {
		  Write-Host "Disk usage normal"
	}
}
