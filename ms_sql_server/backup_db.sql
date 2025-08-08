DECLARE @FileName NVARCHAR(200)
SET @FileName = 'E:\MO0IAO00-1_' + 
                FORMAT(GETDATE(), 'yyyyMMdd_HHmm') + '.bak'

BACKUP DATABASE [MO0IAO00-1] 
TO  DISK = @FileName
WITH NOFORMAT, NOINIT,  NAME = N'testdb-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO