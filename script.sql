USE [Avaliacao]
GO
/****** Object:  Table [dbo].[Bairros]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairros](
	[BairroID] [int] NOT NULL,
	[CidadeID] [int] NOT NULL,
	[Nome] [nvarchar](100) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[BairroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [SECONDARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[CidadeID] [int] NOT NULL,
	[Nome] [nvarchar](100) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[CidadeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [SECONDARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Situacao] [nvarchar](40) NULL,
	[BairroID] [int] NOT NULL,
	[CidadeID] [int] NOT NULL,
	[UFID] [int] NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[DataNascimento] [datetime] NULL,
	[Sexo] [nchar](1) NULL,
	[CPF] [nvarchar](40) NULL,
	[RG] [nvarchar](40) NULL,
	[Telefone] [nvarchar](40) NULL,
	[Celular] [nvarchar](40) NULL,
	[Endereco] [nvarchar](200) NULL,
	[CEP] [nvarchar](20) NULL,
	[DataCadastro] [datetime] NULL,
	[TipoCliente] [nvarchar](40) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [SECONDARY]
GO
/****** Object:  Table [dbo].[EmailsClientes]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailsClientes](
	[EmailClienteID] [int] IDENTITY(1,1) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[Email] [nvarchar](400) NULL,
	[Padrao] [tinyint] NOT NULL,
 CONSTRAINT [EmailsClientes_PK] PRIMARY KEY NONCLUSTERED 
(
	[EmailClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[UFID] [int] NOT NULL,
	[Estado] [nvarchar](2) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [SECONDARY]
GO
/****** Object:  Table [dbo].[PESSOAS]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PESSOAS](
	[NUMERO_U] [nvarchar](50) NOT NULL,
	[SIT] [nvarchar](50) NULL,
	[NOME] [nvarchar](50) NULL,
	[CPF] [nvarchar](50) NULL,
	[RG] [nvarchar](50) NULL,
	[FONE1] [nvarchar](50) NULL,
	[BAIRRO] [nvarchar](50) NULL,
	[CIDADE] [nvarchar](50) NULL,
	[FONE2] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[CEP] [nvarchar](50) NULL,
	[LOGRADOURO] [nvarchar](50) NULL,
	[NUMERO] [int] NULL,
	[TIPO_P] [nvarchar](50) NULL,
	[DATA_NASC] [datetime2](7) NULL,
	[DATA_CAD] [nvarchar](50) NULL,
	[SEXO] [nvarchar](50) NULL,
	[ESTADO] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SITP]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SITP](
	[SITPCD] [nvarchar](50) NOT NULL,
	[DESC] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP]    Script Date: 25/02/2021 22:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP](
	[TPPCD] [nvarchar](50) NOT NULL,
	[DESC] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bairros] ADD  DEFAULT ((0)) FOR [BairroID]
GO
ALTER TABLE [dbo].[Bairros] ADD  DEFAULT ((0)) FOR [CidadeID]
GO
ALTER TABLE [dbo].[Bairros] ADD  DEFAULT ('') FOR [Nome]
GO
ALTER TABLE [dbo].[Cidades] ADD  DEFAULT ((0)) FOR [CidadeID]
GO
ALTER TABLE [dbo].[Cidades] ADD  DEFAULT ('') FOR [Nome]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [ClienteID]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Situacao]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [BairroID]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [CidadeID]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [UFID]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Nome]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Sexo]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [CPF]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [RG]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Telefone]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Celular]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [Endereco]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [CEP]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('') FOR [TipoCliente]
GO
ALTER TABLE [dbo].[EmailsClientes] ADD  DEFAULT ((0)) FOR [ClienteID]
GO
ALTER TABLE [dbo].[EmailsClientes] ADD  DEFAULT ('') FOR [Email]
GO
ALTER TABLE [dbo].[EmailsClientes] ADD  DEFAULT ((0)) FOR [Padrao]
GO
ALTER TABLE [dbo].[Estados] ADD  DEFAULT ((0)) FOR [UFID]
GO
ALTER TABLE [dbo].[Estados] ADD  DEFAULT ('') FOR [Estado]
GO
ALTER TABLE [dbo].[Bairros]  WITH NOCHECK ADD FOREIGN KEY([CidadeID])
REFERENCES [dbo].[Cidades] ([CidadeID])
GO
ALTER TABLE [dbo].[Bairros]  WITH NOCHECK ADD FOREIGN KEY([CidadeID])
REFERENCES [dbo].[Cidades] ([CidadeID])
GO
ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD FOREIGN KEY([BairroID])
REFERENCES [dbo].[Bairros] ([BairroID])
GO
ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD FOREIGN KEY([CidadeID])
REFERENCES [dbo].[Cidades] ([CidadeID])
GO
ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD FOREIGN KEY([UFID])
REFERENCES [dbo].[Estados] ([UFID])
GO
ALTER TABLE [dbo].[EmailsClientes]  WITH NOCHECK ADD  CONSTRAINT [EmailsClientes_ClienteID] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[EmailsClientes] NOCHECK CONSTRAINT [EmailsClientes_ClienteID]
GO
