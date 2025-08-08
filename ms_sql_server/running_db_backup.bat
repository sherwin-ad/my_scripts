echo Starting backup at %DATE% %TIME%... >> "C:\Backups\BackupLog.txt
sqlcmd -S isometrix-dev2 -E -i "C:\Backups\backup_db_MO0IAO00-1.sql" >> "C:\Backups\BackupLog.txt" 2>&1
echo Backup completed at at %DATE% %TIME% >> "C:\Backups\BackupLog.txt"