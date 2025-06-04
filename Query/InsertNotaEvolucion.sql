USE ExpedienteClinicoDB
GO

INSERT INTO nota_evolucion (
    expediente_id, personal_id, evolucion_clinica, signos_vitales, resultados_estudios,
    diagnostico_actual, pronostico, tratamiento, nombre_completo, firma_digital
)
VALUES
(1, 1, 'Paciente presenta mejoría en dolor torácico tras administración de nitroglicerina.', 
 'PA:125/80, FC:85', 'Electrocardiograma sin alteraciones significativas', 
 'Angina estable', 'Bueno', 'Nitroglicerina sublingual cada 8h', 
 'Dra. Marta Ramírez Gómez', 'firma_evolucion_1'),

(2, 2, 'Menor nivel de ansiedad; paciente reporta mejor calidad de sueño.', 
 'PA:118/76, FC:70', 'Cuestionario GAD-7 con mejora de puntaje', 
 'Trastorno de ansiedad en remisión parcial', 'Bueno', 'Continuar terapia cognitivo conductual', 
 'Dr. Jorge López Sánchez', 'firma_evolucion_2'),

(3, 3, 'Dolor lumbar cede con analgésicos. Paciente continúa con limitación leve en movilidad.', 
 'PA:122/80, FC:78', 'Radiografía sin lesiones óseas', 
 'Lumbalgia mecánica', 'Reservado', 'Paracetamol y reposo relativo', 
 'Enf. Patricia Hernández', 'firma_evolucion_3'),

(4, 4, 'Cefalea disminuye de intensidad tras manejo inicial con analgésicos.', 
 'PA:120/75, FC:72', 'Tomografía cerebral sin hallazgos', 
 'Migraña sin aura', 'Bueno', 'Ibuprofeno 400mg cada 8h', 
 'Dr. Fernando Martínez Torres', 'firma_evolucion_4');
 GO

 SELECT * FROM dbo.nota_evolucion