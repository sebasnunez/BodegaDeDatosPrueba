USE [master]
GO
/****** Object:  Database [BodegaDatosPrueba]    Script Date: 07/10/2020 10:38:09 p. m. ******/
CREATE DATABASE [BodegaDatosPrueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BodegaDatosPrueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BodegaDatosPrueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BodegaDatosPrueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BodegaDatosPrueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BodegaDatosPrueba] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BodegaDatosPrueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BodegaDatosPrueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BodegaDatosPrueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BodegaDatosPrueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BodegaDatosPrueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BodegaDatosPrueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET RECOVERY FULL 
GO
ALTER DATABASE [BodegaDatosPrueba] SET  MULTI_USER 
GO
ALTER DATABASE [BodegaDatosPrueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BodegaDatosPrueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BodegaDatosPrueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BodegaDatosPrueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BodegaDatosPrueba] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BodegaDatosPrueba', N'ON'
GO
ALTER DATABASE [BodegaDatosPrueba] SET QUERY_STORE = OFF
GO
USE [BodegaDatosPrueba]
GO
/****** Object:  Table [dbo].[DimCategoriaProducto]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCategoriaProducto](
	[IdCategoria] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCliente]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Genero] [varchar](10) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[Cel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEmpleado]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmpleado](
	[IdEmpleado] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Genero] [varchar](10) NOT NULL,
	[Email] [varchar](20) NOT NULL,
	[Cel] [int] NOT NULL,
	[IdTEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFecha]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFecha](
	[IdFecha] [int] NOT NULL,
	[DiaSemana] [varchar](10) NOT NULL,
	[NumeroDiaMes] [int] NOT NULL,
	[NumeroSemanaAño] [int] NOT NULL,
	[Mes] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimOferta]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimOferta](
	[IdOferta] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[IdProducto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdOferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProducto]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProducto](
	[IdProducto] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[IdCategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTipoEmpleado]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTipoEmpleado](
	[IdTEmpleado] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactFinanzas]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactFinanzas](
	[IdFinanzas] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IdFecha] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFinanzas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactInventarioProducto]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInventarioProducto](
	[IdInProducto] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[Costo] [money] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IdFecha] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactVentaMercado]    Script Date: 07/10/2020 10:38:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactVentaMercado](
	[IdVentaMercado] [int] NOT NULL,
	[CantidadPedido] [int] NOT NULL,
	[TOTALCOSTO] [int] NOT NULL,
	[IdFecha] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdOferta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVentaMercado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimEmpleado]  WITH CHECK ADD  CONSTRAINT [FKeyIdTEmpleado] FOREIGN KEY([IdTEmpleado])
REFERENCES [dbo].[DimTipoEmpleado] ([IdTEmpleado])
GO
ALTER TABLE [dbo].[DimEmpleado] CHECK CONSTRAINT [FKeyIdTEmpleado]
GO
ALTER TABLE [dbo].[DimOferta]  WITH CHECK ADD  CONSTRAINT [FKeyIdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[DimProducto] ([IdProducto])
GO
ALTER TABLE [dbo].[DimOferta] CHECK CONSTRAINT [FKeyIdProducto]
GO
ALTER TABLE [dbo].[DimProducto]  WITH CHECK ADD  CONSTRAINT [FKeyIdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[DimCategoriaProducto] ([IdCategoria])
GO
ALTER TABLE [dbo].[DimProducto] CHECK CONSTRAINT [FKeyIdCategoria]
GO
ALTER TABLE [dbo].[FactFinanzas]  WITH CHECK ADD  CONSTRAINT [FKeyIdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[DimEmpleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[FactFinanzas] CHECK CONSTRAINT [FKeyIdEmpleado]
GO
ALTER TABLE [dbo].[FactFinanzas]  WITH CHECK ADD  CONSTRAINT [FKeyIdFecha] FOREIGN KEY([IdFecha])
REFERENCES [dbo].[DimFecha] ([IdFecha])
GO
ALTER TABLE [dbo].[FactFinanzas] CHECK CONSTRAINT [FKeyIdFecha]
GO
ALTER TABLE [dbo].[FactInventarioProducto]  WITH CHECK ADD  CONSTRAINT [FKeyIdIdFecha] FOREIGN KEY([IdFecha])
REFERENCES [dbo].[DimFecha] ([IdFecha])
GO
ALTER TABLE [dbo].[FactInventarioProducto] CHECK CONSTRAINT [FKeyIdIdFecha]
GO
ALTER TABLE [dbo].[FactInventarioProducto]  WITH CHECK ADD  CONSTRAINT [FKeyIdIdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[DimProducto] ([IdProducto])
GO
ALTER TABLE [dbo].[FactInventarioProducto] CHECK CONSTRAINT [FKeyIdIdProducto]
GO
ALTER TABLE [dbo].[FactVentaMercado]  WITH CHECK ADD  CONSTRAINT [F2KeyIdEmpleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[DimEmpleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[FactVentaMercado] CHECK CONSTRAINT [F2KeyIdEmpleado]
GO
ALTER TABLE [dbo].[FactVentaMercado]  WITH CHECK ADD  CONSTRAINT [F2KeyIdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[DimProducto] ([IdProducto])
GO
ALTER TABLE [dbo].[FactVentaMercado] CHECK CONSTRAINT [F2KeyIdProducto]
GO
ALTER TABLE [dbo].[FactVentaMercado]  WITH CHECK ADD  CONSTRAINT [F3KeyIdFecha] FOREIGN KEY([IdFecha])
REFERENCES [dbo].[DimFecha] ([IdFecha])
GO
ALTER TABLE [dbo].[FactVentaMercado] CHECK CONSTRAINT [F3KeyIdFecha]
GO
ALTER TABLE [dbo].[FactVentaMercado]  WITH CHECK ADD  CONSTRAINT [FKeyIdCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[DimCliente] ([IdCliente])
GO
ALTER TABLE [dbo].[FactVentaMercado] CHECK CONSTRAINT [FKeyIdCliente]
GO
ALTER TABLE [dbo].[FactVentaMercado]  WITH CHECK ADD  CONSTRAINT [FKeyIdOferta] FOREIGN KEY([IdOferta])
REFERENCES [dbo].[DimOferta] ([IdOferta])
GO
ALTER TABLE [dbo].[FactVentaMercado] CHECK CONSTRAINT [FKeyIdOferta]
GO
USE [master]
GO
ALTER DATABASE [BodegaDatosPrueba] SET  READ_WRITE 
GO
