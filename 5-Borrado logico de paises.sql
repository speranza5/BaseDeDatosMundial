CREATE TRIGGER borrarPais ON Pais INSTEAD OF DELETE
AS
BEGIN
	UPDATE Pais
	SET borrado = 1
	WHERE codigo_pais IN (
		SELECT d.codigo_pais
		FROM deleted d
	)		
END