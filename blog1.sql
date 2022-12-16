CREATE TABLE usuarios(
    Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Edad INT NOT NULL,
	Correo VARCHAR(50) NOT NULL,
	Contrasenha VARCHAR(20) NOT NULL,
	id_user SERIAL PRIMARY KEY,
	Estado BOOLEAN DEFAULT false,
	id_comen BIGINT
);

CREATE TABLE post(
	id_post SERIAL PRIMARY KEY,
	titulo VARCHAR(25),
	contenido TEXT,
	imagen VARCHAR(255),
	fecha_creado DATE DEFAULT CURRENT_DATE,
	id_user SERIAL,
	FOREIGN KEY (id_user) REFERENCES usuarios(id_user)
);
CREATE TABLE comentarios(
	id_comen SERIAL PRIMARY KEY,
	Nombre VARCHAR(30),
	Post_id BIGINT,
	Correo VARCHAR(50),
	Contenido text,
	Fecha_creado DATE DEFAULT CURRENT_DATE
	
);

CREATE TABLE usu_x_comen(
	id_usu_x_comen SERIAL PRIMARY KEY,
	id_comen BIGINT,
	id_post BIGINT,
	FOREIGN KEY (id_comen) REFERENCES comentarios(id_comen),
	FOREIGN KEY (id_post) REFERENCES usuarios(id_user)
);