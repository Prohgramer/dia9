
CREATE TABLE Pais(
	nombre_pais VARCHAR(30) NOT NULL,
	id_pais SERIAL PRIMARY KEY
);

CREATE TABLE resultado(
	id_resultado SERIAL PRIMARY KEY,
	pais_ganador VARCHAR(30)
	
);


 
 CREATE TABLE octavos_final(
 	 id_oct SERIAL PRIMARY KEY,
	 Estadio VARCHAR(40) NOT NULL,
	 id_equipo BIGint
 );
 
 CREATE TABLE cuarto_final(
	 id_cuarto SERIAL PRIMARY KEY,
 	Fecha DATE,
	 hora TIME, 
	Estadio VARCHAR(40) NOT NULL,
	 id_equipo int
 );
 
 CREATE TABLE semi_final(
	 id_semi SERIAL PRIMARY KEY,
 	Fecha DATE,
	 hora TIME, 
	 Estadio VARCHAR(40) NOT NULL,
	 id_equipo int

 );
 
 CREATE TABLE finall(
	 id_final SERIAL PRIMARY KEY,
 	Fecha DATE,
	 hora TIME, 
	 Estadio VARCHAR(40) NOT NULL,
	 id_equipo int
 );
  CREATE TABLE partidos(
	 nro_partido SERIAL PRIMARY KEY,
	 id_pais1 BIGint,
	 id_pais2 BIGint,
	 id_oct BIGint,
	 id_cuarto BIGint,
	 id_semi BIGint,
	 id_resultado BIGINT,
	 FOREIGN KEY (id_pais1) REFERENCES Pais(id_pais),
	 FOREIGN KEY (id_pais2) REFERENCES Pais(id_pais),
	 Fecha DATE,
	 FOREIGN KEY (id_oct) REFERENCES octavos_final(id_oct),
	 FOREIGN KEY (id_cuarto) REFERENCES cuarto_final(id_cuarto),
	 FOREIGN KEY (id_semi) REFERENCES semi_final(id_semi),
	 FOREIGN KEY (id_resultado) REFERENCES resultado(id_resultado)
 );