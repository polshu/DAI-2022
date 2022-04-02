USE [DAI-Pizzas]
GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 4/1/2022 8:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizzas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[LibreGluten] [bit] NULL,
	[Importe] [float] NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Pizzas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 4/1/2022 8:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Token] [varchar](64) NULL,
	[TokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pizzas] ON 
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (1, N'Pizza Muzzarella', 0, 800.5, N'Pizza con queso Muzzarella.')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (2, N'Pizza Fugazzeta', 1, 1000, N'Pizza con queso Muzzarella, tiene rica cebolla y te deja un aliento como para hacerle la permanente a tu pareja..')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (3, N'Pizza Carbonara', 1, 1540.5, N'Salsa carbonara: huevo, queso parmesano, sal y pimienta. Cebolla, bacon (kevin) y queso rallado por encima, ya que por debajo no se ve.')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (4, N'Pizza Margarita', 1, 1450, N'Salsa de tomate, mozzarella, albahaca, orégano y aceite de oliva. Viene con un mentoplus..')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (5, N'Pizza Napolitana', 0, 1270, N'Salsa de tomate, queso mozzarella, anchoas, orégano, alcaparras y aceite de oliva. Un corcho para cuando vas al excusado..')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (6, N'Pizza Cuatro Quesos', 1, 1380, N'El queso fontina, originario del Valle de La garompiña; el queso gorgonzola, natural de Milán; el queso parmesano, originario de la ciudad de Parma; y el queso mozzarella del supermercado DIA.')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (7, N'Pizza con Jamon', 0, 1210, N'Pizza con queso Muzzarella, se le agrega Jamon y te cobro el doble.')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (8, N'Pizza con Rucula y Provolone', 1, 1380, N'Riquisima Pizza a la piedra, con queso provolone.. con el aliento de dragon que te queda aflojas un tornillo de un puente de hierro.')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (9, N'Pizza Picante.', 1, 1400, N'Masa fina, queso del super de la esquina, aji mejicano recontra piacante. Cuando vas al baño se incendia el papel higienico..')
GO
INSERT [dbo].[Pizzas] ([Id], [Nombre], [LibreGluten], [Importe], [Descripcion]) VALUES (10, N'Faina', 0, 160, N'Harina, aceite, sal y pimienta... y despues te compras una faina en el COTO.')
GO
SET IDENTITY_INSERT [dbo].[Pizzas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (1, N'Joaquin', N'Abraldes', N'JoaAbr', N'1JA', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (2, N'Tiago Ariel', N'Adjiman', N'TiaAdj', N'2TA', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (3, N'Catherina Galit', N'Altmark', N'CatAlt', N'3CA', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (4, N'Mateo Agustin', N'Andraca', N'MatAnd', N'4MA', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (5, N'Valentino', N'Arfa Tenenberg', N'ValArf', N'5VA', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (6, N'Facundo', N'Beloqui', N'FacBel', N'6FB', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (7, N'Nahuel', N'Bertoni', N'NahBer', N'7NB', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (8, N'Sebastian Hikari', N'Biorci', N'SebBio', N'8SB', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (9, N'Galo', N'Coria Maiorano', N'GalCor', N'9GC', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (10, N'Ivan', N'Divinsky Molina', N'IvaDiv', N'10ID', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (11, N'Joaquin Ignacio', N'Durán', N'JoaDur', N'11JD', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (12, N'Joaquin', N'Evangelisti', N'JoaEva', N'12JE', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (13, N'Maximo', N'Farinola', N'MaxFar', N'13MF', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (14, N'Nicolas Uriel', N'Fishman', N'NicFis', N'14NF', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (15, N'Victoria', N'Gastaldi Bircher', N'VicGas', N'15VG', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (16, N'Iaacob Ilan', N'Hambra', N'IaaHam', N'16IH', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (17, N'Antonella', N'Hauserman', N'AntHau', N'17AH', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (18, N'Valentin', N'Jacofsky', N'ValJac', N'18VJ', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (19, N'Matias', N'Kahan Rapoport', N'MatKah', N'19MK', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (20, N'Matias', N'Kelman', N'MatKel', N'20MK', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (21, N'Juan Ignacio', N'Lopez', N'JuaLop', N'21JL', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (22, N'Renata', N'Mandelman', N'RenMan', N'22RM', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (23, N'Alan', N'Mutzmajer', N'AlaMut', N'23AM', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (24, N'Tomas', N'Olivera', N'TomOli', N'24TO', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (25, N'Dalila', N'Orbaj', N'DalOrb', N'25DO', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (26, N'Tobias', N'Perel', N'TobPer', N'26TP', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (27, N'Joaquin', N'Rabinovich', N'JoaRab', N'27JR', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (28, N'Luca', N'Radrizzani', N'LucRad', N'28LR', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (29, N'Luca', N'Sacchi', N'LucSac', N'29LS', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (30, N'Dan Mauricio', N'Silberman', N'DanSil', N'30DS', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (31, N'Lucio', N'Silva', N'LucSil', N'31LS', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (32, N'Carolina Iara', N'Teselman', N'CarTes', N'32CT', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (33, N'Maximo', N'Tietze', N'MaxTie', N'33MT', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (34, N'Ariel', N'Treszezamsky Soto', N'AriTre', N'34AT', NULL, NULL)
GO
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Apellido], [UserName], [Password], [Token], [TokenExpirationDate]) VALUES (35, N'Santino', N'Yoo', N'SanYoo', N'35SY', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
