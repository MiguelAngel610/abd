USE ExpedienteClinicoDB
GO

INSERT INTO acceso_expediente (
    expediente_id, personal_id, motivo, nombre_completo
)
VALUES
(1, 1, 'Consulta de seguimiento cardiovascular', 'Dra. Marta Ram�rez G�mez'),
(2, 2, 'Sesi�n de evaluaci�n psicol�gica', 'Dr. Jorge L�pez S�nchez'),
(3, 3, 'Administraci�n de analg�sicos y signos vitales', 'Enf. Patricia Hern�ndez'),
(4, 4, 'Evaluaci�n neurol�gica inicial', 'Dr. Fernando Mart�nez Torres'),
(1, 5, 'Evaluaci�n nutricional complementaria', 'Lic. Andrea G�mez P�rez');
GO

SELECT * FROM dbo.acceso_expediente