-- Tabla cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL
);

-- Tabla alumnos
CREATE TABLE alumnos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,
    apellido VARCHAR(75) NOT NULL,
    id_curso INT REFERENCES cursos(id),
    fecha_nacimiento DATE,
    hace_deportes BOOLEAN
);

-- Tabla grupos_pdp
CREATE TABLE grupos_pdp (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL
);

-- Tabla alumnos_grupos_pdp
CREATE TABLE alumnos_grupos_pdp (
    id SERIAL PRIMARY KEY,
    id_grupo_pdp INT REFERENCES grupos_pdp(id),
    id_alumno INT REFERENCES alumnos(id)
);

-- INSERTS PARA cursos
INSERT INTO cursos (nombre) VALUES ('5IA');
INSERT INTO cursos (nombre) VALUES ('5IB');
INSERT INTO cursos (nombre) VALUES ('5IC');
INSERT INTO cursos (nombre) VALUES ('5ID');

-- INSERTS PARA grupos_pdp
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_01');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_02');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_03');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_04');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_05');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_06');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_07');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_08');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_09');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_10');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_11');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_12');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_13');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_14');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_15');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_16');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_17');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_18');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_19');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_20');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_21');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_22');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_23');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_24');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_25');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_26');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_27');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_28');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_29');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_30');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_31');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_32');
INSERT INTO grupos_pdp (nombre) VALUES ('GRUPO_RESTANTE');

-- INSERTS PARA alumnos (ver archivo separado si lo deseas por partes)
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Liam', 'Cohen', 1, '2008-04-05', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Brandon Uriel', 'De La Fuente', 1, '2008-05-10', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matias Gonzalo', 'Dubin', 1, '2007-11-01', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Michelle Tamar', 'Epelbaum', 1, NULL, TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Astor', 'Federici', 1, '2008-03-13', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Joaquin', 'Frankenthal', 1, '2007-12-04', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Thiago Martín', 'Garcia Salmaso', 1, '2007-12-30', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Bruno', 'Godoy', 3, '2007-09-19', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Lola', 'Grille', 1, '2007-06-18', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Federico', 'Kurozwan', 1, '2007-11-07', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomás', 'Lendner', 1, '2007-10-11', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('María Eugenia', 'Lucero', 1, '2007-10-31', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('André', 'Martin', 1, NULL, TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Alan Emanuel', 'Menace', 1, '2008-01-22', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Gonda Manuel', 'Mendez', 1, '2008-03-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Leandro', 'Min Tomás', 1, '2007-12-23', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Paloma', 'Montenegro', 1, '2008-03-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Santiago Amir', 'Muhafra', 1, '2008-03-20', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Nahiara Sofia', 'Murahovsky', 1, '2008-01-24', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Lola Matilda', 'Nieto Hurley', 1, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Agustin Mael', 'No', 1, '2007-06-08', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Dante', 'Okseniuk', 1, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Joaquín', 'Paterno', 1, '2007-12-16', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Felipe Ciro', 'Roballo', 1, '2007-11-12', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ezequiel', 'Rosemblat', 1, '2007-07-31', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matias', 'Sanchez Toranzo', 1, '2007-07-16', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Francisco', 'Sarobe', 1, '2007-08-25', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Francisco', 'Schreiber', 1, '2008-05-12', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Aarón Axiel', 'Selener', 1, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomas Lionel', 'Torchinsky', 1, '2008-01-25', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ari Benjamin', 'Urbano', 1, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ben', 'Wischñevsky', 1, '2008-03-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Jazmín Ariela', 'Beigel', 2, '2007-12-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Lucas Eial', 'Benezra', 2, '2008-04-16', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ezequiel Iair', 'Berakla', 2, '2007-07-08', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Nicolás Gael', 'Blaser', 2, '2008-01-31', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Elias', 'Brodsky', 2, '2007-10-29', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matías Joaquín', 'Castera', 2, '2008-01-05', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Uriel', 'Cordero De Felice', 2, '2007-07-26', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Valentino', 'Ekes', 2, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Pedro German', 'Garcia', 2, '2008-02-07', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tiago Agustín', 'Ghelman', 2, '2007-09-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Sol Diana', 'Izraelewicz', 2, '2008-01-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Iván', 'Kovadloff', 3, '2007-06-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Milo', 'Landivar Sosa', 2, '2007-06-28', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Facundo Ivan', 'Lewkowicz', 2, '2007-11-02', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Felipe', 'Lipreti Zelaya', 2, '2008-02-27', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Juan Francisco', 'Marapode', 2, '2007-10-24', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Bruno Nahuel', 'Marasi', 2, NULL, TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Eitan', 'Mas', 2, '2007-10-18', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Bruno Duilio', 'Massaccesi', 2, '2008-04-06', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Jazmín Yael', 'Moguilner', 2, '2007-09-14', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Joaquin Ignacio', 'Ordoñez', 2, '2007-12-24', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Maia Katherina', 'Rasumoff Schuster', 2, '2008-03-28', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Vera', 'Romanowicz', 2, '2008-05-15', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Indiana', 'Sasson', 2, '2008-02-23', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomás Alan', 'Sassón', 2, '2007-11-14', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Joaquin Samuel', 'Sfintzi', 2, '2007-08-29', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Uriel Matías', 'Smucler', 2, '2007-08-19', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Salvador', 'Soncini', 2, '2008-05-29', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Luca', 'Urciuoli', 2, '2008-03-19', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Santiago', 'Varela', 2, '2007-09-09', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Julieta', 'Wainhaus Barber', 2, '2008-05-13', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Santino', 'Aguilera', 3, '2008-04-04', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Agustin Zaid', 'Alessi', 3, '2007-06-28', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Federico Sebastián', 'Azubel Fingerhut', 3, '2007-07-30', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matías Ilán', 'Bebczuk', 3, '2008-02-28', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Uriel', 'Berman Kreserman', 3, '2007-11-11', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Santiago', 'Colombet Antonelli', 3, '2008-04-05', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Agustín Matías', 'De Marco', 3, '2008-03-05', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Marco', 'Di Carlo', 3, '2008-04-29', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Leila Aluminé', 'Entenza Chiderski', 3, '2007-06-12', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Eitán Gabriel', 'Fridman', 3, '2007-09-26', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomás Uriel', 'Goldberg', 3, '2008-01-22', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Mati Ezequiel', 'Grzenda', 3, '2007-12-30', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matias Daniel', 'Halac', 3, '2008-02-14', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ian Ezequiel', 'Jolodovsky', 3, '2007-12-31', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Gonzalo Joaquín', 'Kacanas', 3, '2007-07-11', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Alon', 'Kanter', 3, '2007-06-12', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tiziana Emma', 'Mattioda', 3, '2008-04-12', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Felipe', 'Otero', 3, '2008-01-03', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Iair Ezequiel', 'Socha', 3, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Gonzalo Ezequiel', 'Susel', 3, '2008-04-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ilan', 'Tauscher', 3, '2007-07-14', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Dekel', 'Usach', 3, '2008-05-24', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Abril', 'Varela Sica', 3, '2007-11-20', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Nehuen Yair', 'Villasanti', 3, '2008-01-22', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Matias Leonel', 'Wilder', 3, '2008-02-27', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Martín Ioel', 'Zilbersztein', 3, '2007-08-30', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ciro', 'Ben Dov', 4, '2007-12-17', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Agustin', 'Berenstein', 4, '2008-02-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomás', 'Cabral Rios', 4, '2007-12-31', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('David', 'Chinski', 4, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Martin Eitan', 'Cywiner', 4, '2007-09-02', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Lucas Santiago', 'D´Agostino', 4, '2008-03-10', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Luciana Micaela', 'Dominguez Sztern', 4, '2008-01-04', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Iair Damian', 'Dyner', 4, '2008-05-12', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Uriel', 'Engelberg', 4, '2008-05-02', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Mateo', 'Eulmesekian', 4, '2008-04-15', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Michelle Sofia', 'Garber', 4, '2007-06-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Brian Gabriel', 'Huberman ', 4, '2007-11-05', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tobías Ian', 'Jajurin', 4, NULL, FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ari', 'Jusid', 4, '2007-11-13', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ezequiel', 'Kalik', 4, '2008-04-27', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomas David', 'Klawir', 4, '2007-11-19', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Tomas', 'Korngold', 4, '2007-08-08', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Kevin Sebastian', 'Lee', 4, '2007-09-09', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Eric Lionel', 'Marasch Donzis', 4, '2008-01-08', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ian', 'Miglin', 4, NULL, TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Renata', 'Minuchin', 4, '2007-07-18', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Leticia Rocío', 'Passer', 4, '2007-06-10', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Juan Uriel', 'Rozenbeim', 4, '2007-10-28', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Ian Manuel', 'Segade', 4, '2007-07-21', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Santiago Eitan', 'Solmesky', 4, '2007-06-21', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Uriel', 'Stolar', 4, '2007-07-26', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Elias Ezequiel', 'Suez', 4, NULL, TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Martina', 'Szwarcbort', 4, '2008-03-14', FALSE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Franco Agustín', 'Taglioretti Pestchanker', 4, '2008-02-01', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Lucas Martin', 'Tjor', 4, '2007-09-10', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Nicolás', 'Wicnudel', 4, '2008-01-06', TRUE);
INSERT INTO alumnos (nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES ('Alan Jeremy', 'Zolotow', 4, '2008-04-06', TRUE);

-- INSERTS PARA alumnos_grupos_pdp
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (1, 1);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (1, 2);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (1, 3);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (2, 5);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (2, 6);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (2, 7);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (2, 8);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (3, 10);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (3, 11);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (3, 12);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (3, 13);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (4, 14);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (4, 15);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (5, 16);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (5, 17);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (5, 18);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (5, 19);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (5, 20);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (6, 21);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (6, 22);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (6, 23);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (7, 24);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (7, 25);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (7, 26);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (8, 27);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (8, 28);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (8, 29);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (8, 31);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (9, 32);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (9, 33);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (9, 35);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (10, 36);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (10, 37);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (10, 38);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (10, 39);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (10, 40);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (11, 41);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (11, 42);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (11, 43);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (11, 44);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (12, 45);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (12, 46);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (13, 47);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (13, 48);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (13, 49);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (13, 50);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (14, 51);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (14, 52);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (14, 53);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (15, 54);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (15, 55);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (15, 56);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (15, 57);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (16, 58);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (16, 59);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (16, 60);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (16, 61);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (17, 62);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (17, 64);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (17, 65);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (18, 67);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (19, 68);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (19, 69);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (19, 70);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (19, 71);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (20, 72);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (20, 73);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (20, 74);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (20, 75);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (20, 76);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (21, 77);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (21, 78);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (21, 79);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (21, 80);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (22, 81);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (22, 82);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (22, 83);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (23, 84);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (23, 85);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (23, 87);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 88);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 89);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 90);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 91);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 92);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (24, 93);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (25, 95);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (25, 96);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (25, 97);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (26, 98);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (26, 99);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (26, 100);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (26, 101);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (26, 102);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (27, 103);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (27, 104);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (27, 105);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (27, 106);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (28, 108);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (28, 109);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (28, 110);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (28, 111);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (29, 112);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (29, 113);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (29, 114);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (29, 115);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (30, 116);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (30, 117);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (31, 118);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (31, 119);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (32, 120);
INSERT INTO alumnos_grupos_pdp (id_grupo_pdp, id_alumno) VALUES (32, 121);