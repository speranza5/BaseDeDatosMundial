SELECT TOP 5 Pais.codigo_pais, Pais.nombre , COUNT(Partido.numero_partido)
FROM Partido
JOIN Pais ON (Pais.codigo_pais = Partido.codigo_pais_1 or Pais.codigo_pais = Partido.codigo_pais_2)
where Partido.codigo_instancia = 6
GROUP BY Pais.codigo_pais, Pais.nombre

--Esta insertada argentina egipto como final, gano egipto