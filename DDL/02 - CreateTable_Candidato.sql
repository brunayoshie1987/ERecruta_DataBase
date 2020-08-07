

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


