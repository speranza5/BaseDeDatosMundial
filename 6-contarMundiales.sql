USE
 TP_Sql_Grupo17
 GO

 CREATE FUNCTION contarMundiales 
(	@codigo INT
)
RETURNS INT
AS
BEGIN
	DECLARE @cantidad AS int =0
	
	SELECT @cantidad = COUNT(DISTINCT equ.anio_mundial)
	FROM Equipo equ 
	JOIN pais p ON p.codigo_pais = equ.codigo_pais
	WHERE equ.codigo_pais = @codigo

	RETURN @cantidad
END
GO

SELECT dbo.contarMundiales(49)
SELECT dbo.contarMundiales(1)
