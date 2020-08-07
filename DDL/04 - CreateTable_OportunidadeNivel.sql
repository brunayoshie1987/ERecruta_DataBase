

CREATE TABLE [dbo].[OportunidadeNivel](
	[NivelId] [char](2) NOT NULL,
	[OportunidadeNivel] [int] NOT NULL,
 CONSTRAINT [PK_OportunidadeNivel] PRIMARY KEY CLUSTERED 
(
	[NivelId] ASC,
	[OportunidadeNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OportunidadeNivel]  WITH CHECK ADD  CONSTRAINT [FK_OportunidadeNivel_Oportunidade] FOREIGN KEY([OportunidadeNivel])
REFERENCES [dbo].[Oportunidade] ([ID])
GO

ALTER TABLE [dbo].[OportunidadeNivel] CHECK CONSTRAINT [FK_OportunidadeNivel_Oportunidade]
GO

ALTER TABLE [dbo].[OportunidadeNivel]  WITH CHECK ADD  CONSTRAINT [FK_OportunidadeNivel_OportunidadeNivel] FOREIGN KEY([NivelId], [OportunidadeNivel])
REFERENCES [dbo].[OportunidadeNivel] ([NivelId], [OportunidadeNivel])
GO

ALTER TABLE [dbo].[OportunidadeNivel] CHECK CONSTRAINT [FK_OportunidadeNivel_OportunidadeNivel]
GO


