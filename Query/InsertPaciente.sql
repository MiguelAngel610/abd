USE ExpedienteClinicoDB
GO

INSERT INTO paciente (
    nombre, apellido_paterno, apellido_materno, fecha_nacimiento, sexo, domicilio, telefono, email, responsable_registro
)
VALUES
('Jos�', 'Ram�rez', 'L�pez', '1982-11-23', 'H', 'Calle Primavera 45, CDMX', '5511223344', 'jose.ramirez@example.com', 'admin1'),
('Ana', 'Gonz�lez', 'Mendoza', '1995-05-10', 'M', 'Av. Las Flores 789, Guadalajara', '5522334455', 'ana.gonzalez@example.com', 'admin2'),
('Luis', 'Fern�ndez', NULL, '1978-07-15', 'H', 'Calle Luna 123, Monterrey', NULL, NULL, 'admin3'),
('Mar�a', 'S�nchez', 'Ram�rez', '2000-02-28', 'M', 'Av. Sol 456, Puebla', '5533445566', 'maria.sanchez@example.com', 'admin1'),
('Carlos', 'Torres', 'Vega', '1965-12-01', 'H', 'Calle R�o 321, Canc�n', '5544556677', 'carlos.torres@example.com', 'admin2'),
('Luc�a', 'Morales', 'Hern�ndez', '1988-08-08', 'M', 'Av. Cedro 89, Quer�taro', '5555667788', 'lucia.morales@example.com', 'admin3');
GO

SELECT * FROM dbo.paciente