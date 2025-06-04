USE ExpedienteClinicoDB
GO

INSERT INTO historia_clinica (
    expediente_id, personal_id, grupo_etnico, antecedentes_familiares, antecedentes_personales,
    padecimiento_actual, signos_vitales, peso, talla, exploracion_fisica, diagnostico_presuntivo,
    codigo_cie10, pronostico, firma_digital
)
VALUES
(1, 1, 'Mestizo', 'Hipertensión en familia', 'Asma en la infancia',
 'Dolor torácico y dificultad respiratoria', 'PA:130/85, FC:90', 75.5, 1.80,
 'Cardiopatía sin complicaciones evidentes', 'Angina de pecho', 'I20.9', 'Reservado', 'firma_digital_1'),
(2, 2, 'Indígena', 'Diabetes tipo 2 en madre', 'Hipotiroidismo',
 'Ansiedad generalizada y trastornos del sueño', 'PA:115/70, FC:72', 65.0, 1.65,
 'Sin hallazgos físicos relevantes', 'Trastorno de ansiedad', 'F41.1', 'Bueno', 'firma_digital_2'),
(3, 3, 'Mestizo', 'Ninguno', 'Hipertensión controlada',
 'Dolor lumbar crónico', 'PA:120/80, FC:75', 80.0, 1.75,
 'Limitación de movilidad lumbar', 'Lumbalgia', 'M54.5', 'Bueno', 'firma_digital_3'),
(4, 4, 'Afrodescendiente', 'Artritis reumatoide en familiares', 'Obesidad',
 'Cefalea persistente', 'PA:125/78, FC:80', 68.0, 1.70,
 'Exploración neurológica sin alteraciones', 'Migraña', 'G43.9', 'Reservado', 'firma_digital_4');
 GO

 SELECT * FROM dbo.historia_clinica