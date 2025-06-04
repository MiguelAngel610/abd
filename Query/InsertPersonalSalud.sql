USE ExpedienteClinicoDB
GO

INSERT INTO personal_salud (
    nombre, apellido_paterno, apellido_materno, cedula_profesional, especialidad, tipo
)
VALUES
('Marta', 'Ramírez', 'Gómez', 'MED123456', 'Cardiología', 'Médico'),
('Jorge', 'López', 'Sánchez', 'PSI654321', 'Psicología Clínica', 'Psicólogo'),
('Patricia', 'Hernández', NULL, 'ENF987654', 'Enfermería General', 'Enfermero'),
('Fernando', 'Martínez', 'Torres', 'MED112233', 'Medicina General', 'Médico'),
('Andrea', 'Gómez', 'Pérez', 'NUT445566', 'Nutrición Clínica', 'Nutriólogo'),
('Ricardo', 'Sosa', 'Vargas', 'ODO778899', 'Odontología General', 'Odontólogo');
GO

SELECT * FROM dbo.personal_salud