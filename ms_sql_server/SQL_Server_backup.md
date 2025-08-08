To schedule a SQL Server backup using  **Windows Task Scheduler** , you can follow these steps:


**Step 1: Create a SQL Backup Script**

You’ll need a `.sql` script or a PowerShell script that performs the backup. Here's an example of a basic `.sql` script:

```
DECLARE @FileName NVARCHAR(200)
SET @FileName = 'E:\MO0IAO00-1_' + 
                FORMAT(GETDATE(), 'yyyyMMdd_HHmm') + '.bak'

BACKUP DATABASE [MO0IAO00-1] 
TO  DISK = @FileName
WITH NOFORMAT, NOINIT,  NAME = N'testdb-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
```

**Step 2: Create a Batch File to Run the Script**
Create a `.bat` file that uses `sqlcmd` to run the SQL script:
```
echo Starting backup at %DATE% %TIME%... >> "C:\Backups\BackupLog.txt
sqlcmd -S isometrix-dev2 -E -i "C:\Backups\backup_db_MO0IAO00-1.sql" >> "C:\Backups\BackupLog.txt" 2>&1
echo Backup completed at at %DATE% %TIME% >> "C:\Backups\BackupLog.txt"
```

* `-S` is your SQL Server name (use `localhost` if it's local).
* `-E` uses Windows Authentication. Use `-U username -P password` for SQL Authentication.
* -i	Input SQL file to run.
* Save this as `RunBackup.bat`.
---

**Step 3: Schedule the Task in Task Scheduler**

1. Open  **Task Scheduler** .
2. Click  **Create Basic Task** .
3. Name it (e.g., "SQL Server Backup").
4. Choose the trigger (e.g., daily, weekly).
5. Choose  **Start a program** .
6. Browse and select your `RunBackup.bat` file.
7. Finish the wizard.

**Step 4: Delete old backup files**
- Batch Script to Delete Old Files
```
@echo off
set "BackupFolder=D:\SQLBackups"
set "DaysOld=7"

echo Deleting backup files older than %DaysOld% days in %BackupFolder%
forfiles /p "%BackupFolder%" /s /m *.bak /d -%DaysOld% /c "cmd /c del /q @path"

echo Cleanup complete.
```
- forfiles is a built-in Windows command.
- /d -7 means files older than 7 days.
- /m *.bak targets only .bak files.
- /s includes subfolders (remove it if not needed).
