USE ExpedienteClinicoDB

INSERT INTO expediente_clinico (
    paciente_id, establecimiento_id, numero_expediente, estatus, usuario_ultima_modificacion
)
VALUES
(1, 1, 'EXP2025001', 'Activo', 'Marta Ramirez'),
(2, 2, 'EXP2025002', 'Activo', 'Jorge L�pez'),
(3, 3, 'EXP2025003', 'Inactivo', 'Patricia Hern�ndez'),
(4, 1, 'EXP2025004', 'Archivado', 'Fernando Mart�nez'),
(5, 4, 'EXP2025005', 'Activo', 'Andrea G�mez'),
(6, 5, 'EXP2025006', 'Activo', 'Ricardo Sosa');

SELECT * FROM dbo.expediente_clinico