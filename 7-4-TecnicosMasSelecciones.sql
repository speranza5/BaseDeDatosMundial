CREATE VIEW cantMundialesDirigidos
AS
SELECT DISTINCT Equipo.pasaporte_dt, Persona.nombre_apellido, COUNT(Equipo.anio_mundial) AS cantidad
FROM Equipo 
JOIN Director_Tecnico ON Equipo.pasaporte_dt = Director_Tecnico.pasaporte_dt
JOIN Persona ON Director_Tecnico.pasaporte_dt = Persona.pasaporte
GROUP BY Equipo.pasaporte_dt, Persona.nombre_apellido

SELECT cantMundialesDirigidos.nombre_apellido, cantMundialesDirigidos.cantidad
FROM cantMundialesDirigidos
WHERE cantMundialesDirigidos.cantidad = (SELECT MAX(cantMundialesDirigidos.cantidad) FROM cantMundialesDirigidos)
