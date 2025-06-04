USE ExpedienteClinicoDB

INSERT INTO establecimiento (nombre, tipo, domicilio, institucion_perteneciente, razon_social)
VALUES
('Hospital Central de Especialidades', 'Público', 'Av. Reforma 101, CDMX', 'Secretaría de Salud', 'Hospital Central CDMX'),
('Clínica Salud Total', 'Privado', 'Calle Libertad 55, Monterrey, NL', 'Grupo Médico del Norte', 'Clínica Salud Total S.A.'),
('Centro de Salud La Esperanza', 'Público', 'Av. Revolución 300, Oaxaca, OAX', 'Gobierno de Oaxaca', 'Centro de Salud Oaxaca'),
('Hospital Ángeles del Pedregal', 'Privado', 'Camino a Santa Teresa 1055, CDMX', 'Grupo Ángeles', 'Hospital Ángeles S.A.'),
('Unidad Médica Familiar No. 23', 'Público', 'Calle Salud Familiar 88, León, GTO', 'IMSS', 'UMF No. 23'),
('Sanatorio del Valle', 'Privado', 'Av. Universidad 500, Querétaro, QRO', 'Red Médica Privada', 'Sanatorio del Valle S.A.'),
('Hospital Universitario de Guadalajara', 'Público', 'Calle Independencia 1200, Guadalajara, JAL', 'Universidad de Guadalajara', 'HU Guadalajara'),
('Clínica Bienestar Integral', 'Privado', 'Calle 20 de Noviembre 210, Mérida, YUC', 'Grupo Bienestar', 'Clínica Bienestar Integral SA de CV');
GO

SELECT * FROM dbo.establecimiento