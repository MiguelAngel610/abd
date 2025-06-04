USE ExpedienteClinicoDB
GO

INSERT INTO acceso_expediente (
    expediente_id, personal_id, motivo, nombre_completo
)
VALUES
(1, 1, 'Consulta de seguimiento cardiovascular', 'Dra. Marta Ramírez Gómez'),
(2, 2, 'Sesión de evaluación psicológica', 'Dr. Jorge López Sánchez'),
(3, 3, 'Administración de analgésicos y signos vitales', 'Enf. Patricia Hernández'),
(4, 4, 'Evaluación neurológica inicial', 'Dr. Fernando Martínez Torres'),
(1, 5, 'Evaluación nutricional complementaria', 'Lic. Andrea Gómez Pérez');
GO

SELECT * FROM dbo.acceso_expediente