USE ExpedienteClinicoDB
GO

INSERT INTO paciente (
    nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, domicilio, telefono, email, responsable_registro
)
VALUES
('José', 'Ramírez', 'López', '1982-11-23', 'H', 'Calle Primavera 45, CDMX', '5511223344', 'jose.ramirez@example.com', 'admin1'),
('Ana', 'González', 'Mendoza', '1995-05-10', 'M', 'Av. Las Flores 789, Guadalajara', '5522334455', 'ana.gonzalez@example.com', 'admin2'),
('Luis', 'Fernández', NULL, '1978-07-15', 'H', 'Calle Luna 123, Monterrey', NULL, NULL, 'admin3'),
('María', 'Sánchez', 'Ramírez', '2000-02-28', 'M', 'Av. Sol 456, Puebla', '5533445566', 'maria.sanchez@example.com', 'admin1'),
('Carlos', 'Torres', 'Vega', '1965-12-01', 'H', 'Calle Río 321, Cancún', '5544556677', 'carlos.torres@example.com', 'admin2'),
('Lucía', 'Morales', 'Hernández', '1988-08-08', 'M', 'Av. Cedro 89, Querétaro', '5555667788', 'lucia.morales@example.com', 'admin3');
GO

SELECT * FROM dbo.paciente