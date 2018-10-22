USE
 TP_Sql_Grupo17
 GO

CREATE PROCEDURE obtenerJugador(
	@pasaporte_recibido varchar(20)
) AS

SELECT per.nombre_apellido, je.anio_mundial, je.numero_camiseta, je.es_titular

FROM Juega_En je
JOIN Persona per ON je.pasaporte_jugador = per.pasaporte
WHERE je.pasaporte_jugador = @pasaporte_recibido

EXECUTE obtenerJugador @pasaporte_recibido = 'AA25855B'