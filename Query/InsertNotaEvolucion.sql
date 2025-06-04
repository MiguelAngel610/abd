USE ExpedienteClinicoDB
GO

INSERT INTO nota_evolucion (
    expediente_id, personal_id, evolucion_clinica, signos_vitales, resultados_estudios,
    diagnostico_actual, pronostico, tratamiento, nombre_completo, firma_digital
)
VALUES
(1, 1, 'Paciente presenta mejor�a en dolor tor�cico tras administraci�n de nitroglicerina.', 
 'PA:125/80, FC:85', 'Electrocardiograma sin alteraciones significativas', 
 'Angina estable', 'Bueno', 'Nitroglicerina sublingual cada 8h', 
 'Dra. Marta Ram�rez G�mez', 'firma_evolucion_1'),

(2, 2, 'Menor nivel de ansiedad; paciente reporta mejor calidad de sue�o.', 
 'PA:118/76, FC:70', 'Cuestionario GAD-7 con mejora de puntaje', 
 'Trastorno de ansiedad en remisi�n parcial', 'Bueno', 'Continuar terapia cognitivo conductual', 
 'Dr. Jorge L�pez S�nchez', 'firma_evolucion_2'),

(3, 3, 'Dolor lumbar cede con analg�sicos. Paciente contin�a con limitaci�n leve en movilidad.', 
 'PA:122/80, FC:78', 'Radiograf�a sin lesiones �seas', 
 'Lumbalgia mec�nica', 'Reservado', 'Paracetamol y reposo relativo', 
 'Enf. Patricia Hern�ndez', 'firma_evolucion_3'),

(4, 4, 'Cefalea disminuye de intensidad tras manejo inicial con analg�sicos.', 
 'PA:120/75, FC:72', 'Tomograf�a cerebral sin hallazgos', 
 'Migra�a sin aura', 'Bueno', 'Ibuprofeno 400mg cada 8h', 
 'Dr. Fernando Mart�nez Torres', 'firma_evolucion_4');
 GO

 SELECT * FROM dbo.nota_evolucion