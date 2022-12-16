CREATE TABLE cursos(
	id_curso SERIAL PRIMARY KEY,
	informacion text,
	fecha DATE
	
);
CREATE TABLE estudiante(
	Nombre VARCHAR(50) NOT NULL,
	Apellido VARCHAR(50) NOT NULL,
	Nro_contacto VARCHAR(50) NOT NULL,
	id_user SERIAL PRIMARY KEY,
	curso_realizado VARCHAR(50),
	id_curso BIGINT,
	FOREIGN KEY(id_curso) REFERENCES cursos(id_curso)
);


CREATE TABLE malla_curricular(
	id_malla SERIAL PRIMARY KEY,
	materia VARCHAR(30)
);
CREATE TABLE malla_x_cursos(
	id_malla_x_curso SERIAL,
	id_malla BIGINT,
	id_curso BIGINT,
	FOREIGN KEY (id_malla) REFERENCES malla_curricular(id_malla),
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);
CREATE TABLE interesados(
	nombre VARCHAR(50),
	Apellido VARCHAR(50),
	nro_contacto VARCHAR(50),
	email VARCHAR(60),
	id_interesado SERIAL PRIMARY KEY,
	id_curso BIGINT,
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE cronograma_acti(
	actividad_anho VARCHAR(70),
	info_acti text,
	id_calendario SERIAL PRIMARY KEY,
	curso VARCHAR(50) NOT NULL
);
CREATE TABLE crono_x_curso(
	idi SERIAL PRIMARY KEY,
	id_curso BIGINT,
	id_calendario BIGINT,
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
	FOREIGN KEY (id_calendario) REFERENCES cronograma_acti(id_calendario)
);