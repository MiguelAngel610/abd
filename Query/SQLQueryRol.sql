CREATE LOGIN UsuarioSoloLecturaLogin
WITH PASSWORD = 'PasswordFuerte123!';

USE ExpedienteClinicoDB;
GO

CREATE USER UsuarioSoloLectura
FOR LOGIN UsuarioSoloLecturaLogin;

CREATE ROLE SoloLecturaPaciente;

GRANT SELECT ON dbo.paciente TO SoloLecturaPaciente;

EXEC sp_addrolemember 'SoloLecturaPaciente', 'UsuarioSoloLectura';

REVOKE SELECT ON dbo.paciente FROM SoloLecturaPaciente;