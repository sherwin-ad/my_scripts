@echo off
set "BackupFolder=D:\SQLBackups"
set "DaysOld=7"

echo Deleting backup files older than %DaysOld% days in %BackupFolder%
forfiles /p "%BackupFolder%" /s /m *.bak /d -%DaysOld% /c "cmd /c del /q @path"

echo Cleanup complete.
