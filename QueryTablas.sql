CREATE TABLE Persona(
pasaporte varchar(20) NOT NULL PRIMARY KEY,
fecha_nacimiento date NOT NULL,
nombre_apellido varchar(50) NOT NULL
);

CREATE TABLE Jugador(
	pasaporte_jugador varchar(20) NOT NULL FOREIGN KEY REFERENCES Persona(pasaporte) PRIMARY KEY
);

CREATE TABLE Director_Tecnico(
	pasaporte_dt varchar(20) NOT NULL FOREIGN KEY REFERENCES Persona(pasaporte) PRIMARY KEY,
	matricula int NOT NULL
);


CREATE TABLE Ciudad(
	codigo_ciudad int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(50) NOT NULL
);

CREATE TABLE Pais(
	codigo_pais int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre varchar(50) NOT NULL
);


CREATE TABLE Mundial(
	anio_mundial int NOT NULL PRIMARY KEY
);


CREATE TABLE Instancia(
	codigo_instancia int NOT NULL PRIMARY KEY,
	nombre varchar(50) NOT NULL
);


CREATE TABLE Grupo(
	codigo_grupo int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre char NOT NULL
);

CREATE TABLE Estadio(
	codigo_estadio int NOT NULL PRIMARY KEY,
	nombre_estadio varchar(50) NOT NULL,
	codigo_ciudad int NOT NULL FOREIGN KEY REFERENCES Ciudad(codigo_ciudad)
);

CREATE TABLE Equipo(
	codigo_pais int NOT NULL FOREIGN KEY REFERENCES Pais(codigo_pais),
	anio_mundial int NOT NULL FOREIGN KEY REFERENCES Mundial(anio_mundial),
	pasaporte_dt varchar(20) NOT NULL FOREIGN KEY REFERENCES Director_Tecnico(pasaporte_dt),
	cant_rojas int,
	cant_amarillas int,
	PRIMARY KEY(codigo_pais,anio_mundial)
);

CREATE TABLE Partido(
	anio_mundial int NOT NULL FOREIGN KEY REFERENCES Mundial(anio_mundial),
	codigo_instancia int NOT NULL FOREIGN KEY REFERENCES Instancia(codigo_instancia),
	codigo_grupo int FOREIGN KEY REFERENCES Grupo(codigo_grupo),
	codigo_estadio int NOT NULL FOREIGN KEY REFERENCES Estadio(codigo_estadio),
	codigo_pais_1 int NOT NULL,
	anio_mundial_1 int NOT NULL,

	codigo_pais_2 int NOT NULL,
	anio_mundial_2 int NOT NULL,

	CONSTRAINT equipo_1 FOREIGN KEY(codigo_pais_1, anio_mundial_1) REFERENCES Equipo(codigo_pais,anio_mundial),
	CONSTRAINT equipo_2 FOREIGN KEY(codigo_pais_2, anio_mundial_2) REFERENCES Equipo(codigo_pais,anio_mundial),
	numero_partido int NOT NULL IDENTITY(1,1),
	fecha_hora smalldatetime NOT NULL,

	PRIMARY KEY(anio_mundial,numero_partido)
);




CREATE TABLE Aloja(
	codigo_pais int NOT NULL FOREIGN KEY REFERENCES Pais(codigo_pais),
	anio_mundial int NOT NULL FOREIGN KEY REFERENCES Mundial(anio_mundial) ,
	PRIMARY KEY(codigo_pais,anio_mundial),
);



CREATE TABLE Juega_En(
	codigo_pais int NOT NULL FOREIGN KEY REFERENCES Pais(codigo_pais),
	anio_mundial int NOT NULL FOREIGN KEY REFERENCES Mundial(anio_mundial),
	pasaporte_jugador varchar(20) NOT NULL FOREIGN KEY REFERENCES Jugador(pasaporte_jugador),
	numero_camiseta int NOT NULL,
	es_titular bit NOT NULL,
	PRIMARY KEY(codigo_pais,anio_mundial,pasaporte_Jugador)
);

CREATE TABLE Tipo_Gol(
	codigo_tipo_gol int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	descripcion varchar(100) NOT NULL
);

CREATE TABLE Gol(
	anio_mundial int not null,
	numero_partido int not null,

	CONSTRAINT FK_Partido FOREIGN KEY(
		anio_mundial, numero_partido) REFERENCES Partido(anio_mundial, numero_partido), 
	
	codigo_tipo_gol int NOT NULL FOREIGN KEY REFERENCES Tipo_Gol(codigo_tipo_gol),
	pasaporte_jugador varchar(20) NOT NULL FOREIGN KEY REFERENCES Jugador(pasaporte_jugador),
	tiempo_gol timeStamp NOT NULL,
	en_contra bit NOT NULL,
	PRIMARY KEY(anio_mundial,numero_partido,tiempo_gol)
); 

