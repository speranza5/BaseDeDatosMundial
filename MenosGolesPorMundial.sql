CREATE VIEW golesXEquipoXMundial
AS
SELECT DISTINCT Pais.nombre ,Equipo.anio_mundial ,COUNT(*)AS cantidad
FROM Gol
JOIN
Juega_En ON Gol.pasaporte_jugador = Juega_En.pasaporte_jugador AND Gol.anio_mundial =Juega_En.anio_mundial 
JOIN
Equipo ON Equipo.anio_mundial = Juega_En.Anio_mundial AND Equipo.codigo_pais = Juega_En.codigo_pais
JOIN 
Pais ON Pais.codigo_pais = Equipo.codigo_pais
GROUP BY Pais.nombre, Equipo.anio_mundial



SELECT e.anio_mundial,e.nombre,e.cantidad
FROM golesXEquipoXMundial e
WHERE e.cantidad = (SELECT MIN(golesXEquipoXMundial.cantidad) FROM golesXEquipoXMundial)