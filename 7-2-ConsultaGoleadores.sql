SELECT TOP 3 GOL.pasaporte_jugador, Persona.nombre_apellido, Pais.nombre, COUNT(GOl.tiempo_gol) AS goles
FROM Gol
JOIN Persona ON Persona.pasaporte = Gol.pasaporte_jugador
JOIN Pais ON Persona.nacionalidad = Pais.codigo_pais
GROUP BY GOL.pasaporte_jugador, Persona.nombre_apellido, Pais.nombre 
ORDER BY goles DESC