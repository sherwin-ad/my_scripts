import smtplib
from email.mime.text import MIMEText

# Email content
msg = MIMEText("This is a test email from Python.")
msg['Subject'] = "SMTP Test"
msg['From'] = "no-reply@mybusybee.net"
msg['To'] = "sherwin@mybusybee.net"

# SMTP server setup
with smtplib.SMTP("in.mailjet.com", 587) as server:
    server.starttls()
    server.login("d057ae729def161fac", "0a678a9f8e7e32f")
    server.send_message(msg)

print("Email sent successfully!")