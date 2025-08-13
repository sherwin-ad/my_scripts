#!/bin/bash

# --- Settings You Need to Change ---

# MySQL Database
DB_USER="your_mysql_user"          # Your MySQL username
DB_PASS="your_mysql_password"      # Your MySQL password
DB_NAME="your_database_name"       # The specific database to backup (e.g., "my_website_db")

# Apache Website Files
APACHE_DOC_ROOT="/var/www/html"    # Where your website files are (e.g., /var/www/html)

# Where to Store Backups
BACKUP_DIR="/mnt/backups"          # The folder where backups will go (make sure it exists!)
KEEP_DAYS=7                        # How many days to keep old backups

# --- No Need to Change Below This Line ---

# Create a unique name for this backup
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
HOSTNAME=$(hostname)
DB_BACKUP_FILE="${HOSTNAME}_${DB_NAME}_db_${TIMESTAMP}.sql.gz"
APACHE_BACKUP_FILE="${HOSTNAME}_apache_files_${TIMESTAMP}.tar.gz"

# --- Create Backup Folder if it Doesn't Exist ---
mkdir -p "$BACKUP_DIR"

echo "Starting backup for $HOSTNAME..."
echo "Backup folder: $BACKUP_DIR"

# --- Backup MySQL Database ---
echo "  Backing up MySQL database: $DB_NAME..."
mysqldump --user="${DB_USER}" --password="${DB_PASS}" "${DB_NAME}" | gzip > "${BACKUP_DIR}/${DB_BACKUP_FILE}"
if [ $? -eq 0 ]; then
    echo "  Database backup SUCCESS: ${DB_BACKUP_FILE}"
else
    echo "  Database backup FAILED!"
fi

# --- Backup Apache Website Files ---
echo "  Backing up Apache files from: $APACHE_DOC_ROOT..."
tar -czf "${BACKUP_DIR}/${APACHE_BACKUP_FILE}" -C "$(dirname "${APACHE_DOC_ROOT}")" "$(basename "${APACHE_DOC_ROOT}")"
if [ $? -eq 0 ]; then
    echo "  Apache files backup SUCCESS: ${APACHE_BACKUP_FILE}"
else
    echo "  Apache files backup FAILED!"
fi

# --- Clean Up Old Backups ---
echo "  Cleaning up old backups (older than $KEEP_DAYS days)..."
find "$BACKUP_DIR" -type f \( -name "*.sql.gz" -o -name "*.tar.gz" \) -mtime +"$KEEP_DAYS" -delete
echo "  Cleanup finished."

echo "Backup process complete!"
