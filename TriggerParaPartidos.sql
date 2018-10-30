CREATE TRIGGER check_mundiales ON Partido
INSTEAD OF INSERT AS
BEGIN
INSERT INTO dbo.Partido (anio_mundial,codigo_instancia,codigo_grupo,codigo_estadio,anio_mundial_1,codigo_pais_1,anio_mundial_2,codigo_pais_2,fecha_hora)
SELECT anio_mundial,codigo_instancia,codigo_grupo,codigo_estadio,anio_mundial_1,codigo_pais_1,anio_mundial_2,codigo_pais_2,fecha_hora FROM inserted 
WHERE inserted.anio_mundial = inserted.anio_mundial_1 AND inserted.anio_mundial_1 = inserted.anio_mundial_2 AND inserted.anio_mundial=inserted.anio_mundial_2
END


INSERT INTO Partido (anio_mundial,codigo_instancia,codigo_grupo,codigo_estadio,anio_mundial_1,codigo_pais_1,anio_mundial_2,codigo_pais_2,fecha_hora)
VALUES (2018,1,3,11,2018,1,2018,77,'2018-03-03 15:00:00'),(2018,1,3,11,2018,1,2014,1,'2018-03-03 15:00:00')