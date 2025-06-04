USE ExpedienteClinicoDB
GO

INSERT INTO autorizacion_acceso (
    expediente_id, paciente_id, autorizado_por, nombre_autorizador, fecha_autorizacion, motivo, vigencia
)
VALUES
(1, 1, 'Jos� Ram�rez L�pez', 'Jos� Ram�rez L�pez', '2025-05-01', 'Consulta m�dica de seguimiento', '2025-12-31'),
(2, 2, 'Ana Gonz�lez Mendoza', 'Ana Gonz�lez Mendoza', '2025-05-03', 'Terapia psicol�gica', '2025-12-31'),
(3, 3, 'Luis Fern�ndez', 'Luis Fern�ndez', '2025-05-05', 'Revisi�n por dolor cr�nico', '2025-11-30'),
(4, 4, 'Mar�a S�nchez Ram�rez', 'Mar�a S�nchez Ram�rez', '2025-05-08', 'Diagn�stico neurol�gico', '2025-12-31'),
(5, 5, 'Carlos Torres Vega', 'Carlos Torres Vega', '2025-05-10', 'Evaluaci�n nutricional', '2025-10-31');
GO

SELECT * FROM dbo.autorizacion_acceso