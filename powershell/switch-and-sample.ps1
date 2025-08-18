$usage = 90

switch ($usage) {
  {$_ -gt 85} {
      if  ($ENV:COMPUTERNAME -eq 'OWEN-LAPTOP') {
        Write-Host "Uh oh! Disk usage over 85%! Removing temp files."
      #Remove-TempFile
      }
      else {
        Write-Host "Server is not OWEN-LAPTOP so not compressing needed."
      }
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
