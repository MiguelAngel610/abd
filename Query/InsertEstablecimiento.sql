USE ExpedienteClinicoDB

INSERT INTO establecimiento (nombre, tipo, domicilio, institucion_perteneciente, razon_social)
VALUES
('Hospital Central de Especialidades', 'P�blico', 'Av. Reforma 101, CDMX', 'Secretar�a de Salud', 'Hospital Central CDMX'),
('Cl�nica Salud Total', 'Privado', 'Calle Libertad 55, Monterrey, NL', 'Grupo M�dico del Norte', 'Cl�nica Salud Total S.A.'),
('Centro de Salud La Esperanza', 'P�blico', 'Av. Revoluci�n 300, Oaxaca, OAX', 'Gobierno de Oaxaca', 'Centro de Salud Oaxaca'),
('Hospital �ngeles del Pedregal', 'Privado', 'Camino a Santa Teresa 1055, CDMX', 'Grupo �ngeles', 'Hospital �ngeles S.A.'),
('Unidad M�dica Familiar No. 23', 'P�blico', 'Calle Salud Familiar 88, Le�n, GTO', 'IMSS', 'UMF No. 23'),
('Sanatorio del Valle', 'Privado', 'Av. Universidad 500, Quer�taro, QRO', 'Red M�dica Privada', 'Sanatorio del Valle S.A.'),
('Hospital Universitario de Guadalajara', 'P�blico', 'Calle Independencia 1200, Guadalajara, JAL', 'Universidad de Guadalajara', 'HU Guadalajara'),
('Cl�nica Bienestar Integral', 'Privado', 'Calle 20 de Noviembre 210, M�rida, YUC', 'Grupo Bienestar', 'Cl�nica Bienestar Integral SA de CV');
GO

SELECT * FROM dbo.establecimiento