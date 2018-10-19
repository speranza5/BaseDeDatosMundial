
INSERT INTO Persona (pasaporte, fecha_nacimiento,nombre_apellido)
VALUES ('AA25855B','1987-06-14','Lionel Messi'),('HD1000P','1960-03-13','Jorge Sampaoli')

INSERT INTO Jugador (pasaporte_jugador)
VALUES ('AA25855B')

INSERT INTO Director_Tecnico (pasaporte_dt,matricula)
VALUES ('HD1000P',000001)

INSERT INTO Equipo (codigo_pais,anio_mundial,pasaporte_dt,cant_rojas,cant_amarillas)
VALUES (1,2018,'HD1000P',1,4);

INSERT INTO Juega_En
VALUES (1,2018,'AA25855B',10,1)