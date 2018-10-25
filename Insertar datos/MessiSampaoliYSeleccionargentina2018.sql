
INSERT INTO Persona (pasaporte, fecha_nacimiento,nombre_apellido)
VALUES ('AA25855B','1987-06-14','Lionel Messi'),
('AA25855C','1996-01-21','Cristian Pavon'),
('AA25855D','1993-11-15','Paulo Dybala'),
('AA25855E','1987-12-10','Gonzalo Higuain'),
('AA25855F','1988-06-02','Sergio Aguero'),
('AA25855G','1986-02-22','Enzo Perez'),
('AA25855H','1992-01-15','Maximiliano Meza'),
('AA25855I','1996-05-09','Giovani Lo Celso'),
('AA25855J','1990-07-13','Eduardo Salvio'),
('AA25855K','1986-01-30','Lucas Biglia'),
('AA25855L','1988-07-29','Ever Banega'),
('AA25855M','1988-02-14','Angel Di Maria'),
('AA25855N','1984-06-08','Javier Mascherano'),
('AA25855O','1986-09-20','Cristian Ansaldi'),
('AA25855P','1990-03-20','Marcos Rojo'),
('AA25855Q','1992-08-31','Nicolas Tagliafico'),
('AA25855R','1991-10-28','Marcos Acuña'),
('AA25855S','1987-03-17','Federico Fazio'),
('AA25855T','1987-03-18','Gabriel Mercado'),
('AA25855U','1988-02-12','Nicolas Otamendi'),
('AA25855V','1986-02-10','Nahuel Guzman'),
('AA25855W','1986-10-16','Franco Armani'),
('AA25855X','1981-09-28','Wilfredo Daniel Caballero Lazcano'),
('HD1000P','1960-03-13','Jorge Sampaoli');

INSERT INTO Jugador (pasaporte_jugador)
VALUES ('AA25855B'),
('AA25855C'),
('AA25855D'),
('AA25855E'),
('AA25855F'),
('AA25855G'),
('AA25855H'),('AA25855I'),('AA25855J'),
('AA25855K'),('AA25855L'),('AA25855M'),
('AA25855N'),('AA25855O'),('AA25855P'),
('AA25855Q'),('AA25855R'),('AA25855S'),
('AA25855T'),('AA25855U'),('AA25855V'),
('AA25855W'),('AA25855X');

INSERT INTO Director_Tecnico (pasaporte_dt,matricula)
VALUES ('HD1000P',000001)

INSERT INTO Equipo (codigo_pais,anio_mundial,pasaporte_dt,cant_rojas,cant_amarillas)
VALUES (88,2018,'HD1000P',1,4);

INSERT INTO Juega_En
VALUES (88,2018,'AA25855X',23,1), --Caballero
(88,2018,'AA25855W',12,0), --Armani
(88,2018,'AA25855B',10,1), --Claramente Messi
(88,2018,'AA25855C',22,0), --Pavon
(88,2018,'AA25855D',21,0), --Dybala
(88,2018,'AA25855E',9,0), --Higuain
(88,2018,'AA25855F',19,0), --Aguero
(88,2018,'AA25855G',15,1), --Perez
(88,2018,'AA25855H',13,0), --Meza
(88,2018,'AA25855I',20,0), --Lo Celso
(88,2018,'AA25855J',18,0), --Salvio
(88,2018,'AA25855K',5,0), --Biglia
(88,2018,'AA25855L',7,1), --Banega
(88,2018,'AA25855M',11,0), --Di MAria
(88,2018,'AA25855N',14,0), --Mascherano
(88,2018,'AA25855O',4,0), --Ansaldi
(88,2018,'AA25855P',16,0), --Rojo
(88,2018,'AA25855Q',3,1), --Tagliafico
(88,2018,'AA25855R',8,0), --Acuña
(88,2018,'AA25855S',6,0), --Fazio
(88,2018,'AA25855T',2,0), --Mercado
(88,2018,'AA25855U',17,0), --Otamendi
(88,2018,'AA25855V',1,0); --Guzman