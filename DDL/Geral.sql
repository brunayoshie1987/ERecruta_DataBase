
CREATE TABLE [dbo].[Candidato](
	[Id] [int] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Email] [varchar](100) NULL,
	[Celular] [varchar](20) NULL,
	[Linkedin] [varchar](100) NULL,
	[Curriculo] [varbinary](max) NULL,
	[Classificacao] [int] NULL,
	[EstadoId] [bigint] NULL,
	[CidadeId] [bigint] NULL,
	[Observacao] [varchar](max) NULL,
	[Situacao] [bit] NULL,
	[OportunidadedeId] [int] NULL,
	[Regiao] [varchar](40) NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 07/08/2020 11:00:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel](
	[Id] [char](2) NOT NULL,
	[Descricao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oportunidade]    Script Date: 07/08/2020 11:00:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oportunidade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](200) NULL,
	[Empresa] [varchar](100) NULL,
	[DataHoraCriacao] [datetime] NULL,
	[EstadoId] [bigint] NULL,
	[CidadeId] [bigint] NULL,
	[Regiao] [varchar](40) NULL,
	[Remuneracao] [varchar](30) NULL,
	[Regime] [char](2) NULL,
	[Posicao] [char](2) NULL,
	[JobDescription] [varchar](max) NULL,
	[Situacao] [bit] NULL,
 CONSTRAINT [PK_Oportunidade] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunidadeNivel]    Script Date: 07/08/2020 11:00:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
