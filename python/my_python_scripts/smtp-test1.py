import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# Configuration
smtp_server = "in-v3.mailjet.com"
smtp_port = 465
sender_email = "no-reply@mybusybee.net"
receiver_email = "sherwin@mybusybee.net"
username = "d057ae72eb25f14fc61fac"
password = "0a678a9fb8f7421d897e32f"  # Use an app-specific password if using Gmail with 2FA

# Create the email
message = MIMEMultipart()
message["From"] = sender_email
message["To"] = receiver_email
message["Subject"] = "SMTP Test Email"

body = "This is a test email sent via Python SMTP."
message.attach(MIMEText(body, "plain"))

# Send the email
try:
    server = smtplib.SMTP_SSL(smtp_server, smtp_port)
    # server.starttls()
    server.login(username, password)
    server.sendmail(sender_email, receiver_email, message.as_string())
    server.quit()
    print("Email sent successfully!")
except Exception as e:
    print(f"Failed to send email: {e}")