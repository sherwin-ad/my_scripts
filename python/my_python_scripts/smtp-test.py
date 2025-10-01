import smtplib
from email.mime.text import MIMEText

# Email content
msg = MIMEText("This is a test email from Python.")
msg['Subject'] = "SMTP Test"
msg['From'] = "no-reply@mybusybee.net"
msg['To'] = "sherwin@mybusybee.net"

# SMTP server setup
with smtplib.SMTP("in-v3.mailjet.com", 587) as server:
    server.starttls()
    server.login("dd057ae729def1cc326eb25f14fc61fac", "0a678a9fb8f7421d89a65df188e7e32f")
    server.send_message(msg)

print("Email sent successfully!")