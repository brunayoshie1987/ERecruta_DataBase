

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


