USE
 TP_Sql_Grupo17
 GO

CREATE PROCEDURE obtenerJugador(
	@pasaporte_recibido varchar(20)
) AS

SELECT per.nombre_apellido AS nombre_completo, pa.nombre as Pais, je.anio_mundial as mundial, je.numero_camiseta , je.es_titular

FROM Juega_En je
JOIN Persona per ON je.pasaporte_jugador = per.pasaporte
JOIN Pais pa ON je.codigo_pais = pa.codigo_pais
WHERE je.pasaporte_jugador = @pasaporte_recibido

EXECUTE obtenerJugador @pasaporte_recibido = 'AA25855B'
EXECUTE obtenerJugador @pasaporte_recibido = 'salah'