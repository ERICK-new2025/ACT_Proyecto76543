CREATE DATABASE universidad;

USE universidad;

CREATE TABLE alumnos (
    Id_Alumno INT AUTO_INCREMENT PRIMARY KEY,
    Matricula VARCHAR(20),
    Primer_Nombre VARCHAR(50),
    Segundo_Nombre VARCHAR(50),
    Primer_Apellido VARCHAR(50),
    Segundo_Apellido VARCHAR(50),
    Edad INT,
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50),
    Telefono VARCHAR(20),
    Carrera VARCHAR(50),
    Campus VARCHAR(50)
);

CREATE TABLE materias (
    Id_Materia INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Clave VARCHAR(20) UNIQUE NOT NULL,
    Creditos INT NOT NULL,
    Carrera VARCHAR(50)
);

CREATE TABLE profesores (
    Id_Profesor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Correo VARCHAR(100) UNIQUE,
    Especialidad VARCHAR(100)
);

CREATE TABLE calificaciones (
    Id_Calificacion INT AUTO_INCREMENT PRIMARY KEY,
    Id_Alumno INT,
    Id_Materia INT,
    Calificacion DECIMAL(5,2) CHECK (Calificacion BETWEEN 0 AND 100),
    Fecha_Evaluacion DATE NOT NULL,
    FOREIGN KEY (Id_Alumno) REFERENCES alumnos(Id_Alumno) ON DELETE CASCADE,
    FOREIGN KEY (Id_Materia) REFERENCES materias(Id_Materia) ON DELETE CASCADE
);

ALTER TABLE calificaciones (
    Id_Calificacion INT AUTO_INCREMENT PRIMARY KEY,
    Id_Alumno INT,
    Id_Materia INT,
    Id_Profesor INT,
    Calificacion DECIMAL(5,2) CHECK (Calificacion BETWEEN 0 AND 100),
    Fecha_Evaluacion DATE NOT NULL,
    FOREIGN KEY (Id_Alumno) REFERENCES alumnos(Id_Alumno) ON DELETE CASCADE,
    FOREIGN KEY (Id_Materia) REFERENCES materias(Id_Materia) ON DELETE CASCADE,
    FOREIGN KEY (Id_Profesor) REFERENCES profesores(Id_Profesor) ON DELETE CASCADE
);

INSERT INTO alumnos (Matricula, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Edad, Direccion, Ciudad, Estado, Telefono, Carrera, Campus) 
VALUES 
('A001', 'Juan', 'Carlos', 'Pérez', 'López', 21, 'Calle 123', 'Merida', 'Yucatan', '555-1234', 'Ingeniería', 'Campus norte'),
('A002', 'María', 'Fernanda', 'Gómez', 'Ruiz', 22, 'Avenida 456', 'Merida', 'Yucatan', '595-8138', 'Administración', 'Campus Sur'),
('A003', 'Pablo', 'Hernández', 'Sánchez', 'Cruz', 20, 'Avenida 46', 'Merida', 'Yucatan', '555-9724', 'Gatronomia', 'Campus Sur'),
('A004', 'Angel', 'López', 'Cruz', 'Jesus', 21, 'Avenida 6', 'Merida', 'Yucatan', '555-8818', 'Ingeniería', 'Campus norte'),
('A005', 'Carlos', 'Jesus', 'Acevedo', 'Sánchez', 20, 'Avenida 7', 'Merida', 'Yucatan', '755-4768', 'Ingeniería', 'Campus Sur'),
('A006', 'Monserrat', 'Fernanda', 'Mora', 'Martinez', 19, 'Avenida 201', 'Merida', 'Yucatan', '555-5993', 'Administración', 'Campus norte'),
('A007', 'Marco', 'Raul', 'Hernández', 'Aguilar', 27, 'Avenida 999', 'Merida', 'Yucatan', '155-6378', 'Administración', 'Campus Sur'),
('A008', 'Miguel', 'Angel', 'Parra', 'Macedo', 25, 'Avenida 69', 'Merida', 'Yucatan', '515-5998', 'Gatronomia', 'Campus norte'),
('A009', 'Angel', 'Luis', 'Maria', 'Cruz', 20, 'Avenida 101', 'Merida', 'Yucatan', '255-5128', 'Gatronomia', 'Campus norte'),
('A010', 'Eder', 'Fernanda', 'Paredes', 'Roble', 21, 'Avenida 141', 'Merida', 'Yucatan', '555-765', 'Comunicacion', 'Campus Sur');

INSERT INTO materias (Nombre, Clave, Creditos, Carrera) 
VALUES 
('Matemáticas', 'MAT301', 4, 'Ingeniería'),
('Base de datos', 'BDD402', 2, 'Administración'),
('Ciencia', 'CIE201', 5, 'Ingeniería'),
('Ingles', 'ING302', 3, 'Administración'),
('Sistemas', 'SIS105', 1, 'Ingeniería'),
('Derecho', 'DER204', 6, 'Administración'),
('Ingenieria', 'ING108', 7, 'Ingeniería'),
('Administración', 'ADM206', 8, 'Administración'),
('Gastronomia', 'GAS109', 9, 'Ingeniería'),
('Comunicaciones', 'COM203', 11, 'Administración');

INSERT INTO profesores (Nombre, Apellido, Telefono, Correo, Especialidad) 
VALUES 
('Carlos', 'Ramírez', '555-9999', 'carlos.ramirez@uni.com', 'Matemáticas'),
('Ana', 'Torres', '555-8888', 'ana.torres@uni.com', 'Administración'),
('Maria', 'Aguilar', '445-8678', 'MARI.ts@uni.com', 'Ciencias'),
('Joselyn', 'Macedo', '999-2318', 'Joss.Nlgs@uni.com', 'sistemas'),
('Karolina', 'Rivera', '999-2318', 'KarolRIV@uni.com', 'Administracion'),
('Sofia', 'Luisa', '966-2992', 'SOFT.Nele@uni.com', 'pan 1'),
('Argentina', 'Zertuche', '933-2418', 'argzeruchi@uni.com', 'pozole 2'),
('Carlos', 'Morales', '911-2448', 'carlMO@uni.com', 'integrar para masificar'),
('Arcelia', 'Lopez', '199-2128', 'arcelope@uni.com', 'redes 3'),
('Jorge', 'Pedro', '5255-9988', 'Marco.Ped@uni.com', 'Base de datos');

