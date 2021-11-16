USE [db_licoreria]
GO
/****** Object:  Table [dbo].[Amonestaciones]    Script Date: 16/11/2021 05:31:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Amonestaciones](
	[idAmonestacion] [bigint] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[detalleAmonestacion] [varchar](2000) NOT NULL,
	[fechaAmonestacion] [date] NOT NULL,
	[diasSancion] [smallint] NOT NULL,
	[idReferencia] [bigint] NOT NULL,
 CONSTRAINT [PK_Amonestaciones] PRIMARY KEY CLUSTERED 
(
	[idAmonestacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriasProducto]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriasProducto](
	[idCategoriaProducto] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[idCategoriaProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudades](
	[idCiudad] [smallint] IDENTITY(1,1) NOT NULL,
	[idProvincia] [smallint] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Cantones] PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[identificacion] [varchar](30) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellido1] [varchar](30) NOT NULL,
	[apellido2] [varchar](30) NOT NULL,
	[idPais] [smallint] NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[idEstadoCliente] [smallint] NOT NULL,
	[borrado] [bit] NOT NULL,
	[idUsuario] [bigint] NOT NULL,
	[idTipoCliente] [smallint] NOT NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CostosEnvio]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CostosEnvio](
	[idCostoEnvio] [smallint] IDENTITY(1,1) NOT NULL,
	[idPais] [smallint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[monto] [money] NOT NULL,
	[distanciaMax] [smallint] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_CostosEnvio] PRIMARY KEY CLUSTERED 
(
	[idCostoEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[idDepartamento] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_TiposMatricula] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartamentosXSucursales]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartamentosXSucursales](
	[idDepartamentoXSucursal] [int] NOT NULL,
	[idDepartamento] [smallint] NOT NULL,
	[idSucursal] [smallint] NOT NULL,
	[idEmpleadoJefe] [int] NOT NULL,
	[fechaDesignacion] [date] NOT NULL,
 CONSTRAINT [PK_DepartamentosXSucursales_1] PRIMARY KEY CLUSTERED 
(
	[idDepartamentoXSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Descuentos](
	[idDescuento] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[porcentaje] [decimal](3, 2) NOT NULL,
	[minimoAcumulado] [money] NOT NULL,
	[vigencia] [date] NOT NULL,
	[idPais] [smallint] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_Descuentos] PRIMARY KEY CLUSTERED 
(
	[idDescuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesEntrega]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesEntrega](
	[idDetalleEntrega] [bigint] IDENTITY(1,1) NOT NULL,
	[idEntregaPedido] [bigint] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidadEnviada] [smallint] NOT NULL,
 CONSTRAINT [PK_DetallesEntrega] PRIMARY KEY CLUSTERED 
(
	[idDetalleEntrega] ASC,
	[idEntregaPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetallesFactura]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesFactura](
	[idDetalleFactura] [bigint] IDENTITY(1,1) NOT NULL,
	[idFactura] [bigint] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[precio] [money] NOT NULL,
	[porcentajeImp] [decimal](3, 2) NOT NULL,
	[porcentajeDesc] [decimal](3, 2) NULL,
	[tipoCambioUSD] [money] NOT NULL,
 CONSTRAINT [PK_DetallesFactura] PRIMARY KEY CLUSTERED 
(
	[idDetalleFactura] ASC,
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetallesPedido]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesPedido](
	[idDetallePedido] [bigint] IDENTITY(1,1) NOT NULL,
	[idPedido] [bigint] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [smallint] NOT NULL,
 CONSTRAINT [PK_DetallesPedido] PRIMARY KEY CLUSTERED 
(
	[idDetallePedido] ASC,
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiasSemana]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiasSemana](
	[idDiaSemana] [tinyint] NOT NULL,
	[nombreDia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DiasSemana] PRIMARY KEY CLUSTERED 
(
	[idDiaSemana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direcciones](
	[idDireccion] [bigint] IDENTITY(1,1) NOT NULL,
	[idCiudad] [smallint] NOT NULL,
	[detalle] [varchar](100) NOT NULL,
	[ubicacion] [geography] NOT NULL,
 CONSTRAINT [PK_Direcciones] PRIMARY KEY CLUSTERED 
(
	[idDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellido1] [varchar](30) NOT NULL,
	[apellido2] [varchar](30) NOT NULL,
	[identificacion] [varchar](30) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[fechaContratacion] [date] NOT NULL,
	[idPuesto] [smallint] NOT NULL,
	[idUsuario] [bigint] NOT NULL,
	[idPais] [smallint] NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpleadosXDepartamentos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosXDepartamentos](
	[idEmpleado] [int] NOT NULL,
	[idDepartamento] [smallint] NOT NULL,
	[fechaIngreso] [date] NOT NULL,
 CONSTRAINT [PK_EmpleadosXDepartamentos] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC,
	[idDepartamento] ASC,
	[fechaIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpleadosXSucursales]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosXSucursales](
	[idEmpleado] [int] NOT NULL,
	[idSucursal] [smallint] NOT NULL,
	[fechaIngreso] [date] NOT NULL,
 CONSTRAINT [PK_EmpleadosXSucursales] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC,
	[idSucursal] ASC,
	[fechaIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntregasPedido]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntregasPedido](
	[idEntregaPedido] [bigint] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[fechaEnvio] [datetime] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idSucursal] [smallint] NOT NULL,
	[idEstadoEntrega] [smallint] NOT NULL,
	[destino] [geography] NOT NULL,
	[costoEnvio] [money] NOT NULL,
	[fechaRecepcion] [datetime] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_EntregasPedido] PRIMARY KEY CLUSTERED 
(
	[idEntregaPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EntregasPremio]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntregasPremio](
	[idEntregaPremio] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[descripcionPremio] [varchar](50) NOT NULL,
	[mesPremiado] [tinyint] NOT NULL,
	[anoPremiado] [smallint] NOT NULL,
	[fechaEntrega] [date] NOT NULL,
 CONSTRAINT [PK_EntregasPremio] PRIMARY KEY CLUSTERED 
(
	[idEntregaPremio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Envases]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Envases](
	[idEnvase] [smallint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[capacidadLts] [tinyint] NOT NULL,
	[material] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Envases] PRIMARY KEY CLUSTERED 
(
	[idEnvase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosCliente]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadosCliente](
	[idEstadoCliente] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Modalidades] PRIMARY KEY CLUSTERED 
(
	[idEstadoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosEntrega]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadosEntrega](
	[idEstadoEntregable] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_EstadosEntregable] PRIMARY KEY CLUSTERED 
(
	[idEstadoEntregable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosPedido]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadosPedido](
	[idEstadoPedido] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED 
(
	[idEstadoPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[idFactura] [bigint] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idSucursal] [smallint] NOT NULL,
	[fechaEmision] [datetime] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FotografiasEmpleados]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FotografiasEmpleados](
	[idEmpleado] [int] NOT NULL,
	[fotografia] [varbinary](max) NOT NULL,
	[idPais] [smallint] NULL,
 CONSTRAINT [PK_FotografiasEmpleados] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FotografiasProducto]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FotografiasProducto](
	[idProducto] [int] NOT NULL,
	[fotografia] [varbinary](max) NOT NULL,
	[recomendacionConsumo] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorariosAtencion]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HorariosAtencion](
	[idHorarioAtencion] [smallint] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_HorariosAtencion] PRIMARY KEY CLUSTERED 
(
	[idHorarioAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorariosAtencionXDiasSemana]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorariosAtencionXDiasSemana](
	[idDiaSemana] [tinyint] NOT NULL,
	[idHorarioAtencion] [smallint] NOT NULL,
	[horaApertura] [time](7) NOT NULL,
	[horaCierre] [time](7) NOT NULL,
 CONSTRAINT [PK_HorariosAtencionXDiasSemana] PRIMARY KEY CLUSTERED 
(
	[idDiaSemana] ASC,
	[idHorarioAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentificacionesCliente]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IdentificacionesCliente](
	[idCliente] [int] NOT NULL,
	[imagenIdentificacion] [varbinary](max) NOT NULL,
	[idPais] [smallint] NULL,
 CONSTRAINT [PK_IdentificacionClientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[idSucursal] [smallint] NOT NULL,
	[idProveedor] [smallint] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidadDisponible] [smallint] NOT NULL,
	[fechaActualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC,
	[idProveedor] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IVA]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IVA](
	[idIVA] [smallint] IDENTITY(1,1) NOT NULL,
	[idPais] [smallint] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
	[porcentaje] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_IVA] PRIMARY KEY CLUSTERED 
(
	[idIVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcas](
	[idMarca] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodosPago]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodosPago](
	[idMetodoPago] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[detalle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MetodosPago] PRIMARY KEY CLUSTERED 
(
	[idMetodoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodosPagoXClientes]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodosPagoXClientes](
	[idMetodoPagoXCliente] [bigint] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idMetodoPago] [smallint] NOT NULL,
	[fechaVencimiento] [date] NOT NULL,
	[fechaActualizacion] [datetime] NOT NULL,
	[detalle] [varchar](100) NOT NULL,
 CONSTRAINT [PK_MetodosPagoXClientes] PRIMARY KEY CLUSTERED 
(
	[idMetodoPagoXCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Monedas]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monedas](
	[idMoneda] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codigoISO] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Monedas] PRIMARY KEY CLUSTERED 
(
	[idMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[idPago] [bigint] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[fechaPago] [datetime] NOT NULL,
	[idMetodoPagoCliente] [bigint] NOT NULL,
	[monto] [money] NOT NULL,
	[idTipoPago] [smallint] NOT NULL,
	[referencia] [bigint] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paises]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paises](
	[idPais] [smallint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paises_1] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[idPedido] [bigint] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[idSucursal] [smallint] NOT NULL,
	[idEstadoPedido] [smallint] NOT NULL,
 CONSTRAINT [PK_HorariosXDias] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permisos](
	[idPermiso] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[codigo] [binary](1) NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermisosXRoles]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosXRoles](
	[idPermiso] [smallint] NOT NULL,
	[idRol] [smallint] NOT NULL,
	[habilitado] [bit] NOT NULL,
	[fechaActualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_PermisosXRoles] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC,
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PreciosProducto]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreciosProducto](
	[idPrecioProducto] [bigint] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[fechaVigencia] [date] NOT NULL,
	[precio] [money] NOT NULL,
	[idPais] [smallint] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_PreciosProducto_1] PRIMARY KEY CLUSTERED 
(
	[idPrecioProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[codigoProducto] [varchar](30) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[idCategoriaProducto] [smallint] NOT NULL,
	[idMarca] [smallint] NOT NULL,
	[idTipoAnejado] [smallint] NULL,
	[anosAnejado] [smallint] NULL,
	[idCiudad] [smallint] NOT NULL,
	[idEnvase] [smallint] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProveedor] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idDireccion] [bigint] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincias](
	[idProvincia] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[idPais] [smallint] NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puestos](
	[idPuesto] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Puestos] PRIMARY KEY CLUSTERED 
(
	[idPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[idRol] [smallint] IDENTITY(1,1) NOT NULL,
	[nombreRol] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalariosEmpleado]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalariosEmpleado](
	[idSalarioEmpleado] [bigint] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[salario] [money] NOT NULL,
	[fechaVigencia] [date] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_SalariosEmpleado] PRIMARY KEY CLUSTERED 
(
	[idSalarioEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[idSucursal] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idDireccion] [bigint] NOT NULL,
	[borrado] [bit] NOT NULL,
	[idPais] [smallint] NOT NULL,
	[idHorarioAtencion] [smallint] NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoCambioDolar]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCambioDolar](
	[idTipoCambio] [bigint] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[montoCRC] [money] NOT NULL,
	[montoCOP] [money] NOT NULL,
	[montoMXN] [money] NOT NULL,
 CONSTRAINT [PK_TipoCambioDolar] PRIMARY KEY CLUSTERED 
(
	[idTipoCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiposAnejado]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposAnejado](
	[idTipoAnejado] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposAnejado] PRIMARY KEY CLUSTERED 
(
	[idTipoAnejado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposCliente]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposCliente](
	[idTipoCliente] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TiposCliente] PRIMARY KEY CLUSTERED 
(
	[idTipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposContacto]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposContacto](
	[idTipoContacto] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TiposContacto] PRIMARY KEY CLUSTERED 
(
	[idTipoContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposContactoXClientes]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposContactoXClientes](
	[idTipoContacto] [smallint] NOT NULL,
	[idCliente] [int] NOT NULL,
	[detalle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposContactoXClientes] PRIMARY KEY CLUSTERED 
(
	[idTipoContacto] ASC,
	[idCliente] ASC,
	[detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposContactoXEmpleados]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposContactoXEmpleados](
	[idTipoContacto] [smallint] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[detalle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposContactoXEmpleados] PRIMARY KEY CLUSTERED 
(
	[idTipoContacto] ASC,
	[idEmpleado] ASC,
	[detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposContactoXProveedores]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposContactoXProveedores](
	[idTipoContacto] [smallint] NOT NULL,
	[idProveedor] [smallint] NOT NULL,
	[detalle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposContactoXProveedores] PRIMARY KEY CLUSTERED 
(
	[idTipoContacto] ASC,
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposMovimiento]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposMovimiento](
	[idTipoMovimiento] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TiposMovimiento] PRIMARY KEY CLUSTERED 
(
	[idTipoMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposPago]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposPago](
	[idTipoPago] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TiposPago] PRIMARY KEY CLUSTERED 
(
	[idTipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transferencias]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transferencias](
	[idTransferencia] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[fechaTransferencia] [datetime] NOT NULL,
	[idTipoMovimiento] [smallint] NOT NULL,
	[monto] [money] NOT NULL,
	[idMoneda] [smallint] NOT NULL,
 CONSTRAINT [PK_Transferencias] PRIMARY KEY CLUSTERED 
(
	[idTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [bigint] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](50) NOT NULL,
	[habiltado] [bit] NOT NULL,
	[fechaActualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosXRoles]    Script Date: 16/11/2021 05:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosXRoles](
	[idUsuario] [bigint] NOT NULL,
	[idRol] [smallint] NOT NULL,
	[habilitado] [bit] NOT NULL,
	[fechaActualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_UsuariosXRoles] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Amonestaciones]  WITH CHECK ADD  CONSTRAINT [FK_Amonestaciones_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[Amonestaciones] CHECK CONSTRAINT [FK_Amonestaciones_Empleados]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Cantones_Provincias] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincias] ([idProvincia])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Cantones_Provincias]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Paises]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TiposCliente] FOREIGN KEY([idEstadoCliente])
REFERENCES [dbo].[EstadosCliente] ([idEstadoCliente])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TiposCliente]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TiposCliente1] FOREIGN KEY([idTipoCliente])
REFERENCES [dbo].[TiposCliente] ([idTipoCliente])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TiposCliente1]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Usuarios]
GO
ALTER TABLE [dbo].[CostosEnvio]  WITH CHECK ADD  CONSTRAINT [FK_CostosEnvio_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[CostosEnvio] CHECK CONSTRAINT [FK_CostosEnvio_Monedas]
GO
ALTER TABLE [dbo].[CostosEnvio]  WITH CHECK ADD  CONSTRAINT [FK_CostosEnvio_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[CostosEnvio] CHECK CONSTRAINT [FK_CostosEnvio_Paises]
GO
ALTER TABLE [dbo].[DepartamentosXSucursales]  WITH CHECK ADD  CONSTRAINT [FK_DepartamentosXSucursales_Departamentos] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamentos] ([idDepartamento])
GO
ALTER TABLE [dbo].[DepartamentosXSucursales] CHECK CONSTRAINT [FK_DepartamentosXSucursales_Departamentos]
GO
ALTER TABLE [dbo].[DepartamentosXSucursales]  WITH CHECK ADD  CONSTRAINT [FK_DepartamentosXSucursales_Empleados] FOREIGN KEY([idEmpleadoJefe])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[DepartamentosXSucursales] CHECK CONSTRAINT [FK_DepartamentosXSucursales_Empleados]
GO
ALTER TABLE [dbo].[DepartamentosXSucursales]  WITH CHECK ADD  CONSTRAINT [FK_DepartamentosXSucursales_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[DepartamentosXSucursales] CHECK CONSTRAINT [FK_DepartamentosXSucursales_Sucursales]
GO
ALTER TABLE [dbo].[Descuentos]  WITH CHECK ADD  CONSTRAINT [FK_Descuentos_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[Descuentos] CHECK CONSTRAINT [FK_Descuentos_Monedas]
GO
ALTER TABLE [dbo].[Descuentos]  WITH CHECK ADD  CONSTRAINT [FK_Descuentos_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[Descuentos] CHECK CONSTRAINT [FK_Descuentos_Paises]
GO
ALTER TABLE [dbo].[DetallesEntrega]  WITH CHECK ADD  CONSTRAINT [FK_DetallesEntrega_EntregasPedido] FOREIGN KEY([idEntregaPedido])
REFERENCES [dbo].[EntregasPedido] ([idEntregaPedido])
GO
ALTER TABLE [dbo].[DetallesEntrega] CHECK CONSTRAINT [FK_DetallesEntrega_EntregasPedido]
GO
ALTER TABLE [dbo].[DetallesEntrega]  WITH CHECK ADD  CONSTRAINT [FK_DetallesEntrega_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[DetallesEntrega] CHECK CONSTRAINT [FK_DetallesEntrega_Productos]
GO
ALTER TABLE [dbo].[DetallesFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetallesFactura_Facturas] FOREIGN KEY([idFactura])
REFERENCES [dbo].[Facturas] ([idFactura])
GO
ALTER TABLE [dbo].[DetallesFactura] CHECK CONSTRAINT [FK_DetallesFactura_Facturas]
GO
ALTER TABLE [dbo].[DetallesFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetallesFactura_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[DetallesFactura] CHECK CONSTRAINT [FK_DetallesFactura_Productos]
GO
ALTER TABLE [dbo].[DetallesPedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallesPedido_Pedidos] FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[DetallesPedido] CHECK CONSTRAINT [FK_DetallesPedido_Pedidos]
GO
ALTER TABLE [dbo].[DetallesPedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallesPedido_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[DetallesPedido] CHECK CONSTRAINT [FK_DetallesPedido_Productos]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD  CONSTRAINT [FK_Direcciones_Cantones] FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudades] ([idCiudad])
GO
ALTER TABLE [dbo].[Direcciones] CHECK CONSTRAINT [FK_Direcciones_Cantones]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Paises]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Puestos] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puestos] ([idPuesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Puestos]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Usuarios]
GO
ALTER TABLE [dbo].[EmpleadosXDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosXDepartamentos_Departamentos] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamentos] ([idDepartamento])
GO
ALTER TABLE [dbo].[EmpleadosXDepartamentos] CHECK CONSTRAINT [FK_EmpleadosXDepartamentos_Departamentos]
GO
ALTER TABLE [dbo].[EmpleadosXDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosXDepartamentos_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[EmpleadosXDepartamentos] CHECK CONSTRAINT [FK_EmpleadosXDepartamentos_Empleados]
GO
ALTER TABLE [dbo].[EmpleadosXSucursales]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosXSucursales_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[EmpleadosXSucursales] CHECK CONSTRAINT [FK_EmpleadosXSucursales_Empleados]
GO
ALTER TABLE [dbo].[EmpleadosXSucursales]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadosXSucursales_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[EmpleadosXSucursales] CHECK CONSTRAINT [FK_EmpleadosXSucursales_Sucursales]
GO
ALTER TABLE [dbo].[EntregasPedido]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPedido_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[EntregasPedido] CHECK CONSTRAINT [FK_EntregasPedido_Clientes]
GO
ALTER TABLE [dbo].[EntregasPedido]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPedido_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[EntregasPedido] CHECK CONSTRAINT [FK_EntregasPedido_Empleados]
GO
ALTER TABLE [dbo].[EntregasPedido]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPedido_EstadosEntregable] FOREIGN KEY([idEstadoEntrega])
REFERENCES [dbo].[EstadosEntrega] ([idEstadoEntregable])
GO
ALTER TABLE [dbo].[EntregasPedido] CHECK CONSTRAINT [FK_EntregasPedido_EstadosEntregable]
GO
ALTER TABLE [dbo].[EntregasPedido]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPedido_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[EntregasPedido] CHECK CONSTRAINT [FK_EntregasPedido_Monedas]
GO
ALTER TABLE [dbo].[EntregasPedido]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPedido_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[EntregasPedido] CHECK CONSTRAINT [FK_EntregasPedido_Sucursales]
GO
ALTER TABLE [dbo].[EntregasPremio]  WITH CHECK ADD  CONSTRAINT [FK_EntregasPremio_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[EntregasPremio] CHECK CONSTRAINT [FK_EntregasPremio_Empleados]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Empleados]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Monedas]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Sucursales]
GO
ALTER TABLE [dbo].[FotografiasEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_FotografiasEmpleados_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[FotografiasEmpleados] CHECK CONSTRAINT [FK_FotografiasEmpleados_Empleados]
GO
ALTER TABLE [dbo].[FotografiasEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_FotografiasEmpleados_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[FotografiasEmpleados] CHECK CONSTRAINT [FK_FotografiasEmpleados_Paises]
GO
ALTER TABLE [dbo].[FotografiasProducto]  WITH CHECK ADD  CONSTRAINT [FK_FotografiasProducto_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[FotografiasProducto] CHECK CONSTRAINT [FK_FotografiasProducto_Productos]
GO
ALTER TABLE [dbo].[HorariosAtencionXDiasSemana]  WITH CHECK ADD  CONSTRAINT [FK_HorariosAtencionXDiasSemana_DiasSemana] FOREIGN KEY([idDiaSemana])
REFERENCES [dbo].[DiasSemana] ([idDiaSemana])
GO
ALTER TABLE [dbo].[HorariosAtencionXDiasSemana] CHECK CONSTRAINT [FK_HorariosAtencionXDiasSemana_DiasSemana]
GO
ALTER TABLE [dbo].[HorariosAtencionXDiasSemana]  WITH CHECK ADD  CONSTRAINT [FK_HorariosAtencionXDiasSemana_HorariosAtencion] FOREIGN KEY([idHorarioAtencion])
REFERENCES [dbo].[HorariosAtencion] ([idHorarioAtencion])
GO
ALTER TABLE [dbo].[HorariosAtencionXDiasSemana] CHECK CONSTRAINT [FK_HorariosAtencionXDiasSemana_HorariosAtencion]
GO
ALTER TABLE [dbo].[IdentificacionesCliente]  WITH CHECK ADD  CONSTRAINT [FK_IdentificacionClientes_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[IdentificacionesCliente] CHECK CONSTRAINT [FK_IdentificacionClientes_Clientes]
GO
ALTER TABLE [dbo].[IdentificacionesCliente]  WITH CHECK ADD  CONSTRAINT [FK_IdentificacionesCliente_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[IdentificacionesCliente] CHECK CONSTRAINT [FK_IdentificacionesCliente_Paises]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Productos]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Proveedores] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Proveedores]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Sucursales]
GO
ALTER TABLE [dbo].[IVA]  WITH CHECK ADD  CONSTRAINT [FK_IVA_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[IVA] CHECK CONSTRAINT [FK_IVA_Paises]
GO
ALTER TABLE [dbo].[MetodosPagoXClientes]  WITH CHECK ADD  CONSTRAINT [FK_MetodosPagoXClientes_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[MetodosPagoXClientes] CHECK CONSTRAINT [FK_MetodosPagoXClientes_Clientes]
GO
ALTER TABLE [dbo].[MetodosPagoXClientes]  WITH CHECK ADD  CONSTRAINT [FK_MetodosPagoXClientes_MetodosPago] FOREIGN KEY([idMetodoPago])
REFERENCES [dbo].[MetodosPago] ([idMetodoPago])
GO
ALTER TABLE [dbo].[MetodosPagoXClientes] CHECK CONSTRAINT [FK_MetodosPagoXClientes_MetodosPago]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Clientes]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_MetodosPagoXClientes] FOREIGN KEY([idMetodoPagoCliente])
REFERENCES [dbo].[MetodosPagoXClientes] ([idMetodoPagoXCliente])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_MetodosPagoXClientes]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Monedas]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_TiposPago] FOREIGN KEY([idTipoPago])
REFERENCES [dbo].[TiposPago] ([idTipoPago])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_TiposPago]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_EstadosPedido] FOREIGN KEY([idEstadoPedido])
REFERENCES [dbo].[EstadosPedido] ([idEstadoPedido])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_EstadosPedido]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Sucursales] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursales] ([idSucursal])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Sucursales]
GO
ALTER TABLE [dbo].[PermisosXRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermisosXRoles_Permisos] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[Permisos] ([idPermiso])
GO
ALTER TABLE [dbo].[PermisosXRoles] CHECK CONSTRAINT [FK_PermisosXRoles_Permisos]
GO
ALTER TABLE [dbo].[PermisosXRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermisosXRoles_Roles] FOREIGN KEY([idRol])
REFERENCES [dbo].[Roles] ([idRol])
GO
ALTER TABLE [dbo].[PermisosXRoles] CHECK CONSTRAINT [FK_PermisosXRoles_Roles]
GO
ALTER TABLE [dbo].[PreciosProducto]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProducto_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[PreciosProducto] CHECK CONSTRAINT [FK_PreciosProducto_Monedas]
GO
ALTER TABLE [dbo].[PreciosProducto]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProducto_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[PreciosProducto] CHECK CONSTRAINT [FK_PreciosProducto_Paises]
GO
ALTER TABLE [dbo].[PreciosProducto]  WITH CHECK ADD  CONSTRAINT [FK_PreciosProducto_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[PreciosProducto] CHECK CONSTRAINT [FK_PreciosProducto_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_CategoriasProducto] FOREIGN KEY([idCategoriaProducto])
REFERENCES [dbo].[CategoriasProducto] ([idCategoriaProducto])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_CategoriasProducto]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Ciudades] FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudades] ([idCiudad])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Ciudades]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Envases] FOREIGN KEY([idEnvase])
REFERENCES [dbo].[Envases] ([idEnvase])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Envases]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Marcas] FOREIGN KEY([idMarca])
REFERENCES [dbo].[Marcas] ([idMarca])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Marcas]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_TiposAnejado] FOREIGN KEY([idTipoAnejado])
REFERENCES [dbo].[TiposAnejado] ([idTipoAnejado])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_TiposAnejado]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Direcciones] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direcciones] ([idDireccion])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Direcciones]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Paises]
GO
ALTER TABLE [dbo].[SalariosEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_SalariosEmpleado_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[SalariosEmpleado] CHECK CONSTRAINT [FK_SalariosEmpleado_Empleados]
GO
ALTER TABLE [dbo].[SalariosEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_SalariosEmpleado_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[SalariosEmpleado] CHECK CONSTRAINT [FK_SalariosEmpleado_Monedas]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Direcciones] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[Direcciones] ([idDireccion])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Direcciones]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_HorariosAtencion] FOREIGN KEY([idHorarioAtencion])
REFERENCES [dbo].[HorariosAtencion] ([idHorarioAtencion])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_HorariosAtencion]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Paises] FOREIGN KEY([idPais])
REFERENCES [dbo].[Paises] ([idPais])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Paises]
GO
ALTER TABLE [dbo].[TiposContactoXClientes]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXClientes_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[TiposContactoXClientes] CHECK CONSTRAINT [FK_TiposContactoXClientes_Clientes]
GO
ALTER TABLE [dbo].[TiposContactoXClientes]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXClientes_TiposContacto] FOREIGN KEY([idTipoContacto])
REFERENCES [dbo].[TiposContacto] ([idTipoContacto])
GO
ALTER TABLE [dbo].[TiposContactoXClientes] CHECK CONSTRAINT [FK_TiposContactoXClientes_TiposContacto]
GO
ALTER TABLE [dbo].[TiposContactoXEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXEmpleados_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[TiposContactoXEmpleados] CHECK CONSTRAINT [FK_TiposContactoXEmpleados_Empleados]
GO
ALTER TABLE [dbo].[TiposContactoXEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXEmpleados_TiposContacto] FOREIGN KEY([idTipoContacto])
REFERENCES [dbo].[TiposContacto] ([idTipoContacto])
GO
ALTER TABLE [dbo].[TiposContactoXEmpleados] CHECK CONSTRAINT [FK_TiposContactoXEmpleados_TiposContacto]
GO
ALTER TABLE [dbo].[TiposContactoXProveedores]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXProveedores_Proveedores] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[TiposContactoXProveedores] CHECK CONSTRAINT [FK_TiposContactoXProveedores_Proveedores]
GO
ALTER TABLE [dbo].[TiposContactoXProveedores]  WITH CHECK ADD  CONSTRAINT [FK_TiposContactoXProveedores_TiposContacto] FOREIGN KEY([idTipoContacto])
REFERENCES [dbo].[TiposContacto] ([idTipoContacto])
GO
ALTER TABLE [dbo].[TiposContactoXProveedores] CHECK CONSTRAINT [FK_TiposContactoXProveedores_TiposContacto]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_Monedas] FOREIGN KEY([idMoneda])
REFERENCES [dbo].[Monedas] ([idMoneda])
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_Monedas]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_TiposMovimiento] FOREIGN KEY([idTipoMovimiento])
REFERENCES [dbo].[TiposMovimiento] ([idTipoMovimiento])
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_TiposMovimiento]
GO
ALTER TABLE [dbo].[UsuariosXRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosXRoles_Roles] FOREIGN KEY([idRol])
REFERENCES [dbo].[Roles] ([idRol])
GO
ALTER TABLE [dbo].[UsuariosXRoles] CHECK CONSTRAINT [FK_UsuariosXRoles_Roles]
GO
ALTER TABLE [dbo].[UsuariosXRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosXRoles_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuariosXRoles] CHECK CONSTRAINT [FK_UsuariosXRoles_Usuarios]
GO
