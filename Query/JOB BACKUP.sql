USE ExpedienteClinicoDB;
GO

EXEC sp_add_job
    @job_name = N'respaldo_expediente_clinico_db';

EXEC sp_add_jobstep
    @job_name = N'respaldo_expediente_clinico_db',
    @step_name = N'respaldo_db',
    @subsystem = N'TSQL',
    @command = N'
        BACKUP DATABASE expediente_clinico_db
        TO DISK = ''C:\backups\expediente_clinico_db.bak''
        WITH INIT;',
    @database_name = N'master';

EXEC sp_add_schedule
    @schedule_name = N'respaldo_diario',
    @freq_type = 4,  -- diario
    @freq_interval = 1,
    @active_start_time = 020000;  -- 2:00 AM

EXEC sp_attach_schedule
    @job_name = N'respaldo_expediente_clinico_db',
    @schedule_name = N'respaldo_diario';

EXEC sp_add_jobserver
    @job_name = N'respaldo_expediente_clinico_db';
