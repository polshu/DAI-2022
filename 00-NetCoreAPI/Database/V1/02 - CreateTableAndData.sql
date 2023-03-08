USE [DAI-Pizzas]
GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 3/13/2022 3:24:39 PM ******/
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
