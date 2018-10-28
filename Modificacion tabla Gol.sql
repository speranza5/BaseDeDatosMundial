USE [TP_Sql_Grupo17]
GO

CREATE TABLE [dbo].[Gol](
	[anio_mundial] [int] NOT NULL,
	[numero_partido] [int] NOT NULL,
	[codigo_tipo_gol] [int] NOT NULL,
	[pasaporte_jugador] [varchar](20) NOT NULL,
	[numero_gol] [int] IDENTITY(1,1) NOT NULL,
	[minuto_gol] [int]  NOT NULL,
	[en_contra] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[anio_mundial] ASC,
	[numero_partido] ASC,
	[numero_gol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Gol]  WITH CHECK ADD FOREIGN KEY([codigo_tipo_gol])
REFERENCES [dbo].[Tipo_Gol] ([codigo_tipo_gol])
GO

ALTER TABLE [dbo].[Gol]  WITH CHECK ADD FOREIGN KEY([pasaporte_jugador])
REFERENCES [dbo].[Jugador] ([pasaporte_jugador])
GO

ALTER TABLE [dbo].[Gol]  WITH CHECK ADD  CONSTRAINT [FK_Partido] FOREIGN KEY([anio_mundial], [numero_partido])
REFERENCES [dbo].[Partido] ([anio_mundial], [numero_partido])
GO

ALTER TABLE [dbo].[Gol] CHECK CONSTRAINT [FK_Partido]
GO


