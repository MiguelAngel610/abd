USE ExpedienteClinicoDB
GO

INSERT INTO autorizacion_acceso (
    expediente_id, paciente_id, autorizado_por, nombre_autorizador, fecha_autorizacion, motivo, vigencia
)
VALUES
(1, 1, 'José Ramírez López', 'José Ramírez López', '2025-05-01', 'Consulta médica de seguimiento', '2025-12-31'),
(2, 2, 'Ana González Mendoza', 'Ana González Mendoza', '2025-05-03', 'Terapia psicológica', '2025-12-31'),
(3, 3, 'Luis Fernández', 'Luis Fernández', '2025-05-05', 'Revisión por dolor crónico', '2025-11-30'),
(4, 4, 'María Sánchez Ramírez', 'María Sánchez Ramírez', '2025-05-08', 'Diagnóstico neurológico', '2025-12-31'),
(5, 5, 'Carlos Torres Vega', 'Carlos Torres Vega', '2025-05-10', 'Evaluación nutricional', '2025-10-31');
GO

SELECT * FROM dbo.autorizacion_acceso