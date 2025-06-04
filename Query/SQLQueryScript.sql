USE ExpedienteClinicoDB;
GO

ALTER TABLE dbo.establecimiento
ADD deleted BIT NOT NULL CONSTRAINT df_establecimiento_deleted DEFAULT 0;
GO

ALTER TABLE dbo.paciente
ADD deleted BIT NOT NULL CONSTRAINT df_paciente_deleted DEFAULT 0;
GO

ALTER TABLE dbo.expediente_clinico
ADD deleted BIT NOT NULL CONSTRAINT df_expediente_clinico_deleted DEFAULT 0;
GO

ALTER TABLE dbo.personal_salud
ADD deleted BIT NOT NULL CONSTRAINT df_personal_salud_deleted DEFAULT 0;
GO

ALTER TABLE dbo.historia_clinica
ADD deleted BIT NOT NULL CONSTRAINT df_historia_clinica_deleted DEFAULT 0;
GO

ALTER TABLE dbo.nota_evolucion
ADD deleted BIT NOT NULL CONSTRAINT df_nota_evolucion_deleted DEFAULT 0;
GO

ALTER TABLE dbo.acceso_expediente
ADD deleted BIT NOT NULL CONSTRAINT df_acceso_expediente_deleted DEFAULT 0;
GO

ALTER TABLE dbo.autorizacion_acceso
ADD deleted BIT NOT NULL CONSTRAINT df_autorizacion_acceso_deleted DEFAULT 0;
GO

SELECT paciente_id, nombre, deleted FROM dbo.paciente;

SELECT establecimiento_id, nombre, deleted FROM dbo.establecimiento;