USE ExpedienteClinicoDB
GO

INSERT INTO personal_salud (
    nombre, apellido_paterno, apellido_materno, cedula_profesional, especialidad, tipo
)
VALUES
('Marta', 'Ram�rez', 'G�mez', 'MED123456', 'Cardiolog�a', 'M�dico'),
('Jorge', 'L�pez', 'S�nchez', 'PSI654321', 'Psicolog�a Cl�nica', 'Psic�logo'),
('Patricia', 'Hern�ndez', NULL, 'ENF987654', 'Enfermer�a General', 'Enfermero'),
('Fernando', 'Mart�nez', 'Torres', 'MED112233', 'Medicina General', 'M�dico'),
('Andrea', 'G�mez', 'P�rez', 'NUT445566', 'Nutrici�n Cl�nica', 'Nutri�logo'),
('Ricardo', 'Sosa', 'Vargas', 'ODO778899', 'Odontolog�a General', 'Odont�logo');
GO

SELECT * FROM dbo.personal_salud