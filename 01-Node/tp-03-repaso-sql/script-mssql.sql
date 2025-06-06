USE [DAI-2025]
GO
/****** Object:  Table [dbo].[alumnos]    Script Date: 6/5/2025 11:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](75) NOT NULL,
	[apellido] [varchar](75) NOT NULL,
	[id_curso] [int] NULL,
	[fecha_nacimiento] [date] NULL,
	[hace_deportes] [bit] NULL,
 CONSTRAINT [PK__alumnos__3213E83F5D053C85] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alumnos_grupos_pdp]    Script Date: 6/5/2025 11:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnos_grupos_pdp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_grupo_pdp] [int] NULL,
	[id_alumno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cursos]    Script Date: 6/5/2025 11:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cursos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupos_pdp]    Script Date: 6/5/2025 11:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupos_pdp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[alumnos] ON 
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (1, N'Liam', N'Cohen', 1, CAST(N'2008-04-05' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (2, N'Brandon Uriel', N'De La Fuente', 1, CAST(N'2008-05-10' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (3, N'Matias Gonzalo', N'Dubin', 1, CAST(N'2007-11-01' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (4, N'Michelle Tamar', N'Epelbaum', 1, NULL, 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (5, N'Astor', N'Federici', 1, CAST(N'2008-03-13' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (6, N'Joaquin', N'Frankenthal', 1, CAST(N'2007-12-04' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (7, N'Thiago Martín', N'Garcia Salmaso', 1, CAST(N'2007-12-30' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (8, N'Bruno', N'Godoy', 3, CAST(N'2007-09-19' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (9, N'Lola', N'Grille', 1, CAST(N'2007-06-18' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (10, N'Federico', N'Kurozwan', 1, CAST(N'2007-11-07' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (11, N'Tomás', N'Lendner', 1, CAST(N'2007-10-11' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (12, N'María Eugenia', N'Lucero', 1, CAST(N'2007-10-31' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (13, N'André', N'Martin', 1, NULL, 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (14, N'Alan Emanuel', N'Menace', 1, CAST(N'2008-01-22' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (15, N'Gonda Manuel', N'Mendez', 1, CAST(N'2008-03-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (16, N'Leandro', N'Min Tomás', 1, CAST(N'2007-12-23' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (17, N'Paloma', N'Montenegro', 1, CAST(N'2008-03-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (18, N'Santiago Amir', N'Muhafra', 1, CAST(N'2008-03-20' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (19, N'Nahiara Sofia', N'Murahovsky', 1, CAST(N'2008-01-24' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (20, N'Lola Matilda', N'Nieto Hurley', 1, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (21, N'Agustin Mael', N'No', 1, CAST(N'2007-06-08' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (22, N'Dante', N'Okseniuk', 1, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (23, N'Joaquín', N'Paterno', 1, CAST(N'2007-12-16' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (24, N'Felipe Ciro', N'Roballo', 1, CAST(N'2007-11-12' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (25, N'Ezequiel', N'Rosemblat', 1, CAST(N'2007-07-31' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (26, N'Matias', N'Sanchez Toranzo', 1, CAST(N'2007-07-16' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (27, N'Francisco', N'Sarobe', 1, CAST(N'2007-08-25' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (28, N'Francisco', N'Schreiber', 1, CAST(N'2008-05-12' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (29, N'Aarón Axiel', N'Selener', 1, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (30, N'Tomas Lionel', N'Torchinsky', 1, CAST(N'2008-01-25' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (31, N'Ari Benjamin', N'Urbano', 1, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (32, N'Ben', N'Wischñevsky', 1, CAST(N'2008-03-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (33, N'Jazmín Ariela', N'Beigel', 2, CAST(N'2007-12-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (34, N'Lucas Eial', N'Benezra', 2, CAST(N'2008-04-16' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (35, N'Ezequiel Iair', N'Berakla', 2, CAST(N'2007-07-08' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (36, N'Nicolás Gael', N'Blaser', 2, CAST(N'2008-01-31' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (37, N'Elias', N'Brodsky', 2, CAST(N'2007-10-29' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (38, N'Matías Joaquín', N'Castera', 2, CAST(N'2008-01-05' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (39, N'Uriel', N'Cordero De Felice', 2, CAST(N'2007-07-26' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (40, N'Valentino', N'Ekes', 2, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (41, N'Pedro German', N'Garcia', 2, CAST(N'2008-02-07' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (42, N'Tiago Agustín', N'Ghelman', 2, CAST(N'2007-09-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (43, N'Sol Diana', N'Izraelewicz', 2, CAST(N'2008-01-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (44, N'Iván', N'Kovadloff', 3, CAST(N'2007-06-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (45, N'Milo', N'Landivar Sosa', 2, CAST(N'2007-06-28' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (46, N'Facundo Ivan', N'Lewkowicz', 2, CAST(N'2007-11-02' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (47, N'Felipe', N'Lipreti Zelaya', 2, CAST(N'2008-02-27' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (48, N'Juan Francisco', N'Marapode', 2, CAST(N'2007-10-24' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (49, N'Bruno Nahuel', N'Marasi', 2, NULL, 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (50, N'Eitan', N'Mas', 2, CAST(N'2007-10-18' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (51, N'Bruno Duilio', N'Massaccesi', 2, CAST(N'2008-04-06' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (52, N'Jazmín Yael', N'Moguilner', 2, CAST(N'2007-09-14' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (53, N'Joaquin Ignacio', N'Ordoñez', 2, CAST(N'2007-12-24' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (54, N'Maia Katherina', N'Rasumoff Schuster', 2, CAST(N'2008-03-28' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (55, N'Vera', N'Romanowicz', 2, CAST(N'2008-05-15' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (56, N'Indiana', N'Sasson', 2, CAST(N'2008-02-23' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (57, N'Tomás Alan', N'Sassón', 2, CAST(N'2007-11-14' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (58, N'Joaquin Samuel', N'Sfintzi', 2, CAST(N'2007-08-29' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (59, N'Uriel Matías', N'Smucler', 2, CAST(N'2007-08-19' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (60, N'Salvador', N'Soncini', 2, CAST(N'2008-05-29' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (61, N'Luca', N'Urciuoli', 2, CAST(N'2008-03-19' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (62, N'Santiago', N'Varela', 2, CAST(N'2007-09-09' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (63, N'Julieta', N'Wainhaus Barber', 2, CAST(N'2008-05-13' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (64, N'Santino', N'Aguilera', 3, CAST(N'2008-04-04' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (65, N'Agustin Zaid', N'Alessi', 3, CAST(N'2007-06-28' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (66, N'Federico Sebastián', N'Azubel Fingerhut', 3, CAST(N'2007-07-30' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (67, N'Matías Ilán', N'Bebczuk', 3, CAST(N'2008-02-28' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (68, N'Uriel', N'Berman Kreserman', 3, CAST(N'2007-11-11' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (69, N'Santiago', N'Colombet Antonelli', 3, CAST(N'2008-04-05' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (70, N'Agustín Matías', N'De Marco', 3, CAST(N'2008-03-05' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (71, N'Marco', N'Di Carlo', 3, CAST(N'2008-04-29' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (72, N'Leila Aluminé', N'Entenza Chiderski', 3, CAST(N'2007-06-12' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (73, N'Eitán Gabriel', N'Fridman', 3, CAST(N'2007-09-26' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (74, N'Tomás Uriel', N'Goldberg', 3, CAST(N'2008-01-22' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (75, N'Mati Ezequiel', N'Grzenda', 3, CAST(N'2007-12-30' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (76, N'Matias Daniel', N'Halac', 3, CAST(N'2008-02-14' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (77, N'Ian Ezequiel', N'Jolodovsky', 3, CAST(N'2007-12-31' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (78, N'Gonzalo Joaquín', N'Kacanas', 3, CAST(N'2007-07-11' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (79, N'Alon', N'Kanter', 3, CAST(N'2007-06-12' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (80, N'Tiziana Emma', N'Mattioda', 3, CAST(N'2008-04-12' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (81, N'Felipe', N'Otero', 3, CAST(N'2008-01-03' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (82, N'Iair Ezequiel', N'Socha', 3, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (83, N'Gonzalo Ezequiel', N'Susel', 3, CAST(N'2008-04-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (84, N'Ilan', N'Tauscher', 3, CAST(N'2007-07-14' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (85, N'Dekel', N'Usach', 3, CAST(N'2008-05-24' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (86, N'Abril', N'Varela Sica', 3, CAST(N'2007-11-20' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (87, N'Nehuen Yair', N'Villasanti', 3, CAST(N'2008-01-22' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (88, N'Matias Leonel', N'Wilder', 3, CAST(N'2008-02-27' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (89, N'Martín Ioel', N'Zilbersztein', 3, CAST(N'2007-08-30' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (90, N'Ciro', N'Ben Dov', 4, CAST(N'2007-12-17' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (91, N'Agustin', N'Berenstein', 4, CAST(N'2008-02-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (92, N'Tomás', N'Cabral Rios', 4, CAST(N'2007-12-31' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (93, N'David', N'Chinski', 4, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (94, N'Martin Eitan', N'Cywiner', 4, CAST(N'2007-09-02' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (95, N'Lucas Santiago', N'D´Agostino', 4, CAST(N'2008-03-10' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (96, N'Luciana Micaela', N'Dominguez Sztern', 4, CAST(N'2008-01-04' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (97, N'Iair Damian', N'Dyner', 4, CAST(N'2008-05-12' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (98, N'Uriel', N'Engelberg', 4, CAST(N'2008-05-02' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (99, N'Mateo', N'Eulmesekian', 4, CAST(N'2008-04-15' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (100, N'Michelle Sofia', N'Garber', 4, CAST(N'2007-06-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (101, N'Brian Gabriel', N'Huberman ', 4, CAST(N'2007-11-05' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (102, N'Tobías Ian', N'Jajurin', 4, NULL, 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (103, N'Ari', N'Jusid', 4, CAST(N'2007-11-13' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (104, N'Ezequiel', N'Kalik', 4, CAST(N'2008-04-27' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (105, N'Tomas David', N'Klawir', 4, CAST(N'2007-11-19' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (106, N'Tomas', N'Korngold', 4, CAST(N'2007-08-08' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (107, N'Kevin Sebastian', N'Lee', 4, CAST(N'2007-09-09' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (108, N'Eric Lionel', N'Marasch Donzis', 4, CAST(N'2008-01-08' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (109, N'Ian', N'Miglin', 4, NULL, 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (110, N'Renata', N'Minuchin', 4, CAST(N'2007-07-18' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (111, N'Leticia Rocío', N'Passer', 4, CAST(N'2007-06-10' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (112, N'Juan Uriel', N'Rozenbeim', 4, CAST(N'2007-10-28' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (113, N'Ian Manuel', N'Segade', 4, CAST(N'2007-07-21' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (114, N'Santiago Eitan', N'Solmesky', 4, CAST(N'2007-06-21' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (115, N'Uriel', N'Stolar', 4, CAST(N'2007-07-26' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (116, N'Elias Ezequiel', N'Suez', 4, NULL, 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (117, N'Martina', N'Szwarcbort', 4, CAST(N'2008-03-14' AS Date), 0)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (118, N'Franco Agustín', N'Taglioretti Pestchanker', 4, CAST(N'2008-02-01' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (119, N'Lucas Martin', N'Tjor', 4, CAST(N'2007-09-10' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (120, N'Nicolás', N'Wicnudel', 4, CAST(N'2008-01-06' AS Date), 1)
GO
INSERT [dbo].[alumnos] ([id], [nombre], [apellido], [id_curso], [fecha_nacimiento], [hace_deportes]) VALUES (121, N'Alan Jeremy', N'Zolotow', 4, CAST(N'2008-04-06' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[alumnos] OFF
GO
SET IDENTITY_INSERT [dbo].[alumnos_grupos_pdp] ON 
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (1, 1, 1)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (2, 1, 2)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (3, 1, 3)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (5, 2, 5)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (6, 2, 6)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (7, 2, 7)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (8, 2, 8)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (10, 3, 10)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (11, 3, 11)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (12, 3, 12)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (13, 3, 13)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (14, 4, 14)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (15, 4, 15)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (16, 5, 16)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (17, 5, 17)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (18, 5, 18)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (19, 5, 19)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (20, 5, 20)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (21, 6, 21)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (22, 6, 22)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (23, 6, 23)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (24, 7, 24)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (25, 7, 25)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (26, 7, 26)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (27, 8, 27)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (28, 8, 28)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (29, 8, 29)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (31, 8, 31)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (32, 9, 32)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (33, 9, 33)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (35, 9, 35)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (36, 10, 36)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (37, 10, 37)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (38, 10, 38)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (39, 10, 39)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (40, 10, 40)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (41, 11, 41)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (42, 11, 42)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (43, 11, 43)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (44, 11, 44)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (45, 12, 45)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (46, 12, 46)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (47, 13, 47)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (48, 13, 48)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (49, 13, 49)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (50, 13, 50)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (51, 14, 51)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (52, 14, 52)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (53, 14, 53)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (54, 15, 54)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (55, 15, 55)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (56, 15, 56)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (57, 15, 57)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (58, 16, 58)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (59, 16, 59)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (60, 16, 60)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (61, 16, 61)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (62, 17, 62)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (64, 17, 64)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (65, 17, 65)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (67, 18, 67)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (68, 19, 68)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (69, 19, 69)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (70, 19, 70)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (71, 19, 71)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (72, 20, 72)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (73, 20, 73)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (74, 20, 74)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (75, 20, 75)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (76, 20, 76)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (77, 21, 77)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (78, 21, 78)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (79, 21, 79)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (80, 21, 80)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (81, 22, 81)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (82, 22, 82)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (83, 22, 83)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (84, 23, 84)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (85, 23, 85)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (87, 23, 87)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (88, 24, 88)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (89, 24, 89)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (90, 24, 90)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (91, 24, 91)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (92, 24, 92)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (93, 24, 93)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (95, 25, 95)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (96, 25, 96)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (97, 25, 97)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (98, 26, 98)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (99, 26, 99)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (100, 26, 100)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (101, 26, 101)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (102, 26, 102)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (103, 27, 103)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (104, 27, 104)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (105, 27, 105)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (106, 27, 106)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (108, 28, 108)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (109, 28, 109)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (110, 28, 110)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (111, 28, 111)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (112, 29, 112)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (113, 29, 113)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (114, 29, 114)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (115, 29, 115)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (116, 30, 116)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (117, 30, 117)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (118, 31, 118)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (119, 31, 119)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (120, 32, 120)
GO
INSERT [dbo].[alumnos_grupos_pdp] ([id], [id_grupo_pdp], [id_alumno]) VALUES (121, 32, 121)
GO
SET IDENTITY_INSERT [dbo].[alumnos_grupos_pdp] OFF
GO
SET IDENTITY_INSERT [dbo].[cursos] ON 
GO
INSERT [dbo].[cursos] ([id], [nombre]) VALUES (1, N'5IA')
GO
INSERT [dbo].[cursos] ([id], [nombre]) VALUES (2, N'5IB')
GO
INSERT [dbo].[cursos] ([id], [nombre]) VALUES (3, N'5IC')
GO
INSERT [dbo].[cursos] ([id], [nombre]) VALUES (4, N'5ID')
GO
SET IDENTITY_INSERT [dbo].[cursos] OFF
GO
SET IDENTITY_INSERT [dbo].[grupos_pdp] ON 
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (1, N'GRUPO_01')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (2, N'GRUPO_02')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (3, N'GRUPO_03')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (4, N'GRUPO_04')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (5, N'GRUPO_05')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (6, N'GRUPO_06')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (7, N'GRUPO_07')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (8, N'GRUPO_08')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (9, N'GRUPO_09')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (10, N'GRUPO_10')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (11, N'GRUPO_11')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (12, N'GRUPO_12')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (13, N'GRUPO_13')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (14, N'GRUPO_14')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (15, N'GRUPO_15')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (16, N'GRUPO_16')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (17, N'GRUPO_17')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (18, N'GRUPO_18')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (19, N'GRUPO_19')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (20, N'GRUPO_20')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (21, N'GRUPO_21')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (22, N'GRUPO_22')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (23, N'GRUPO_23')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (24, N'GRUPO_24')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (25, N'GRUPO_25')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (26, N'GRUPO_26')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (27, N'GRUPO_27')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (28, N'GRUPO_28')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (29, N'GRUPO_29')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (30, N'GRUPO_30')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (31, N'GRUPO_31')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (32, N'GRUPO_32')
GO
INSERT [dbo].[grupos_pdp] ([id], [nombre]) VALUES (33, N'GRUPO_RESTANTE')
GO
SET IDENTITY_INSERT [dbo].[grupos_pdp] OFF
GO
ALTER TABLE [dbo].[alumnos]  WITH CHECK ADD  CONSTRAINT [FK__alumnos__id_curs__4CA06362] FOREIGN KEY([id_curso])
REFERENCES [dbo].[cursos] ([id])
GO
ALTER TABLE [dbo].[alumnos] CHECK CONSTRAINT [FK__alumnos__id_curs__4CA06362]
GO
ALTER TABLE [dbo].[alumnos_grupos_pdp]  WITH CHECK ADD  CONSTRAINT [FK__alumnos_g__id_al__52593CB8] FOREIGN KEY([id_alumno])
REFERENCES [dbo].[alumnos] ([id])
GO
ALTER TABLE [dbo].[alumnos_grupos_pdp] CHECK CONSTRAINT [FK__alumnos_g__id_al__52593CB8]
GO
ALTER TABLE [dbo].[alumnos_grupos_pdp]  WITH CHECK ADD FOREIGN KEY([id_grupo_pdp])
REFERENCES [dbo].[grupos_pdp] ([id])
GO
