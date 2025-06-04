-- 1. Crear la base de datos para el expediente clínico digital
CREATE DATABASE ExpedienteClinicoDB;
GO

-- 2. Usar la base de datos creada
USE ExpedienteClinicoDB;
GO

-- 3. Crear tabla establecimiento
-- 5.4.1 Identificación del establecimiento
CREATE TABLE establecimiento (
    establecimiento_id INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(100) NOT NULL,
    tipo NVARCHAR(50) NOT NULL,
    domicilio NVARCHAR(255) NOT NULL,
    institucion_perteneciente NVARCHAR(100),
    razon_social NVARCHAR(100),
    activo BIT DEFAULT 1
);
GO

-- 4. Crear tabla paciente
-- 6.2 Datos generales del paciente
CREATE TABLE paciente (
    paciente_id INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(50) NOT NULL,
    apellido_paterno NVARCHAR(50) NOT NULL,
    apellido_materno NVARCHAR(50),
    fecha_nacimiento DATE NOT NULL,
    sexo CHAR(1) NOT NULL CHECK (sexo IN ('H', 'M')),
    domicilio NVARCHAR(255),
    telefono NVARCHAR(10),
    email NVARCHAR(100),
    fecha_registro DATETIME DEFAULT GETDATE(),
    responsable_registro NVARCHAR(100)
);
GO

-- 5. Crear tabla expediente_clinico
-- 6.3 Control y registro del expediente clínico
CREATE TABLE expediente_clinico (
    expediente_id INT PRIMARY KEY IDENTITY(1,1),
    paciente_id INT NOT NULL,
    establecimiento_id INT NOT NULL,
    numero_expediente NVARCHAR(20) NOT NULL UNIQUE,
    fecha_creacion DATETIME NOT NULL DEFAULT GETDATE(),
    estatus NVARCHAR(20) NOT NULL CHECK (estatus IN ('Activo', 'Inactivo', 'Archivado')),
    fecha_ultima_actualizacion DATETIME,
    usuario_ultima_modificacion NVARCHAR(100),

    FOREIGN KEY (paciente_id) REFERENCES paciente(paciente_id),
    FOREIGN KEY (establecimiento_id) REFERENCES establecimiento(establecimiento_id)
);
GO

-- 6. Crear tabla personal_salud
-- 5.5 Identificación y acreditación del personal de salud
CREATE TABLE personal_salud (
    personal_id INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(50) NOT NULL,
    apellido_paterno NVARCHAR(50) NOT NULL,
    apellido_materno NVARCHAR(50),
    cedula_profesional NVARCHAR(20) NOT NULL UNIQUE,
    especialidad NVARCHAR(100),
    tipo NVARCHAR(50) CHECK (tipo IN ('Médico', 'Enfermero', 'Psicólogo', 'Nutriólogo', 'Odontólogo')),
    activo BIT DEFAULT 1
);
GO

-- 7. Crear tabla historia_clinica
-- 6.5 Historia clínica y documentación clínica
CREATE TABLE historia_clinica (
    historia_id INT PRIMARY KEY IDENTITY(1,1),
    expediente_id INT NOT NULL,
    personal_id INT NOT NULL,
    fecha_elaboracion DATETIME NOT NULL DEFAULT GETDATE(),
    grupo_etnico NVARCHAR(50),
    antecedentes_familiares NVARCHAR(500),
    antecedentes_personales NVARCHAR(500),
    padecimiento_actual NVARCHAR(500) NOT NULL,
    signos_vitales NVARCHAR(200),
    peso DECIMAL(5,2),
    talla DECIMAL(5,2),
    exploracion_fisica NVARCHAR(1000),
    diagnostico_presuntivo NVARCHAR(500),
    codigo_cie10 NVARCHAR(10),
    pronostico NVARCHAR(200),
    firma_digital NVARCHAR(MAX),

    FOREIGN KEY (expediente_id) REFERENCES expediente_clinico(expediente_id),
    FOREIGN KEY (personal_id) REFERENCES personal_salud(personal_id)
);
GO

-- 8. Crear tabla nota_evolucion
-- 6.6 Notas de evolución clínica
CREATE TABLE nota_evolucion (
    nota_id INT PRIMARY KEY IDENTITY(1,1),
    expediente_id INT NOT NULL,
    personal_id INT NOT NULL,
    fecha_hora DATETIME NOT NULL DEFAULT GETDATE(),
    evolucion_clinica NVARCHAR(1000) NOT NULL,
    signos_vitales NVARCHAR(200),
    resultados_estudios NVARCHAR(500),
    diagnostico_actual NVARCHAR(500),
    pronostico NVARCHAR(200),
    tratamiento NVARCHAR(1000),
    nombre_completo NVARCHAR(150) NOT NULL,
    firma_digital NVARCHAR(MAX),

    FOREIGN KEY (expediente_id) REFERENCES expediente_clinico(expediente_id),
    FOREIGN KEY (personal_id) REFERENCES personal_salud(personal_id)
);
GO

-- 9. Crear tabla acceso_expediente
-- 5.7 Confidencialidad y control de acceso
CREATE TABLE acceso_expediente (
    acceso_id INT PRIMARY KEY IDENTITY(1,1),
    expediente_id INT NOT NULL,
    personal_id INT NOT NULL,
    fecha_acceso DATETIME NOT NULL DEFAULT GETDATE(),
    motivo NVARCHAR(200) NOT NULL,
    nombre_completo NVARCHAR(150) NOT NULL,

    FOREIGN KEY (expediente_id) REFERENCES expediente_clinico(expediente_id),
    FOREIGN KEY (personal_id) REFERENCES personal_salud(personal_id)
);
GO

-- 10. Crear tabla autorizacion_acceso
-- 5.8 Autorización para acceso a expedientes clínicos
CREATE TABLE autorizacion_acceso (
    autorizacion_id INT PRIMARY KEY IDENTITY(1,1),
    expediente_id INT NOT NULL,
    paciente_id INT NOT NULL,
    autorizado_por NVARCHAR(100) NOT NULL,
    nombre_autorizador NVARCHAR(150) NOT NULL,
    fecha_autorizacion DATE NOT NULL,
    motivo NVARCHAR(200) NOT NULL,
    vigencia DATE,

    FOREIGN KEY (expediente_id) REFERENCES expediente_clinico(expediente_id),
    FOREIGN KEY (paciente_id) REFERENCES paciente(paciente_id)
);
GO
