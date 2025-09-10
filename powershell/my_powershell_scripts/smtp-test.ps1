# SMTP Configuration
$SmtpServer = "3.mailjet.com"
$Port = 587
$Username = "d057ae726eb25f14fc61fac"
$Password = "0b8f7421d89a65df188e7e32f"  # Consider using a secure string in production

# Email Details
$From = "no-reply@mybusybee.net"
$To = "sherwin@beesuite.org"
$Subject = "SMTP Test Email"
$Body = "Hello, this is a test email sent from PowerShell."

# Create credentials object
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)

# Send the email
Send-MailMessage -From $From `
                 -To $To `
                 -Subject $Subject `
                 -Body $Body `
                 -SmtpServer $SmtpServer `
                 -Port $Port `
                 -UseSsl `
                 -Credential $Credential `
                 -BodyAsHtml `
                 -Priority High