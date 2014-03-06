CREATE DATABASE [BD_ClinicaInternacional]
GO

USE [BD_ClinicaInternacional]
GO
/****** Object:  Table [dbo].[TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_MEDICO](
	[ID_Medico] [int] IDENTITY(1,1) NOT NULL,
	[nom_medico] [varchar](50) NULL,
	[ape_medico] [varchar](50) NULL,
	[num_cmp] [varchar](5) NULL,
	[email] [varchar](60) NULL,
	[telefono] [varchar](50) NULL,
	[GA_Nombre] [varchar](255) NOT NULL,
	[GA_Direccion] [varchar](255) NOT NULL,
	[GA_Correo] [varchar](255) NOT NULL,
	[GA_Celular] [varchar](255) NOT NULL,
	[GA_TelefonoDomicilio] [varchar](255) NOT NULL,
	[GE_NombreMedico] [varchar](100) NULL,
	[GE_Especialidad] [int] NULL,
	[GE_FechaCertificacion] [varchar](100) NULL,
	[GE_CentroEstudios] [varchar](100) NULL,
	[GE_CodigoColegiatura] [varchar](20) NULL,
 CONSTRAINT [PK_TB_MEDICO] PRIMARY KEY CLUSTERED 
(
	[ID_Medico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MEDICAMENTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_MEDICAMENTO](
	[ID_Medicamento] [int] IDENTITY(1,1) NOT NULL,
	[GE_NombreMedicamento] [varchar](100) NULL,
	[GE_FechaVencimiento] [date] NULL,
	[GE_CantidadDisponible] [real] NULL,
	[GE_Costo] [real] NULL,
	[Descripcion] [varchar](100) NULL,
	[Laboratorio] [varchar](100) NULL,
	[Observaciones] [varchar](100) NULL,
 CONSTRAINT [PK__TB_MEDIC__5749D070014935CB] PRIMARY KEY CLUSTERED 
(
	[ID_Medicamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_LOCAL]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_LOCAL](
	[ID_Local] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
 CONSTRAINT [PK_TB_LOCAL] PRIMARY KEY CLUSTERED 
(
	[ID_Local] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_LISTA_VERIFICACION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_LISTA_VERIFICACION](
	[ID_ListaVerificacion] [int] IDENTITY(1,1) NOT NULL,
	[GE_Item] [varchar](50) NULL,
	[GE_Conformidad] [char](1) NULL,
 CONSTRAINT [PK__TB_LISTA__DC7C840407020F21] PRIMARY KEY CLUSTERED 
(
	[ID_ListaVerificacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_INSTALACION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_INSTALACION](
	[ID_Instalacion] [int] IDENTITY(1,1) NOT NULL,
	[GE_Ubicacion] [varchar](50) NULL,
	[GE_Disponibilidad] [char](1) NULL,
 CONSTRAINT [PK__TB_INSTA__DC7C84040AD2A005] PRIMARY KEY CLUSTERED 
(
	[ID_Instalacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_INFORME_EQUIPO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_INFORME_EQUIPO](
	[ID_InformeEquipo] [int] IDENTITY(1,1) NOT NULL,
	[GM_Fecha_Informe] [char](8) NULL,
	[GM_Descripción_Actividades] [varchar](100) NULL,
	[GM_Observaciones] [varchar](100) NULL,
	[GM_Estado] [int] NULL,
	[GM_Descripción_Repuestos] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_InformeEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_INFORME_ADMINSITRATIVO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_INFORME_ADMINSITRATIVO](
	[ID_InformeAdministrativo] [int] IDENTITY(1,1) NOT NULL,
	[IA_Codigo_Empleado] [varchar](15) NULL,
	[IA_Tipo_de_Informe] [int] NULL,
	[IA_Mensaje] [varchar](100) NULL,
	[IA_Estado] [varchar](15) NULL,
 CONSTRAINT [PK__TB_INFOR__69907ECC1273C1CD] PRIMARY KEY CLUSTERED 
(
	[ID_InformeAdministrativo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_DE_PEDIDO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_DE_PEDIDO](
	[ID_OrdenPedido] [int] IDENTITY(1,1) NOT NULL,
	[GE_FechaPedido] [date] NULL,
	[GE_Observacion] [varchar](100) NULL,
 CONSTRAINT [PK__TB_ORDEN__8B7A8CD0164452B1] PRIMARY KEY CLUSTERED 
(
	[ID_OrdenPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MOTIVO_HOSPITALIZACION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_MOTIVO_HOSPITALIZACION](
	[ID_Motivo_Hospitalizacion] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionInternamiento] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Motivo_Hospitalizacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_AREA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_AREA](
	[ID_Area] [int] IDENTITY(1,1) NOT NULL,
	[GE_Nombre] [varchar](100) NULL,
	[GE_Ubicacion] [varchar](100) NULL,
 CONSTRAINT [PK__TB_AREA__E8567A4B1DE57479] PRIMARY KEY CLUSTERED 
(
	[ID_Area] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_CENTRO_COSTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CENTRO_COSTO](
	[ID_CentroCosto] [int] IDENTITY(1,1) NOT NULL,
	[Descripción_CC] [varchar](100) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CentroCosto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ACTIVO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ACTIVO](
	[ID_Activo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Activo] [varchar](100) NULL,
	[Descripción] [varchar](100) NULL,
	[Cantidad] [int] NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Activo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ACTIVIDADES_PLANIFICADAS]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ACTIVIDADES_PLANIFICADAS](
	[ID_Actividades_Planificadas] [int] IDENTITY(1,1) NOT NULL,
	[GM_Fecha_Planificada] [char](8) NULL,
	[GM_Hora_Inicio] [int] NULL,
	[GM_Hora_Final] [int] NULL,
	[GM_Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Actividades_Planificadas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_FICHA_EQUIPO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_FICHA_EQUIPO](
	[ID_Ficha_Equipo] [int] IDENTITY(1,1) NOT NULL,
	[GM_Ubicación] [varchar](100) NULL,
	[GM_Fecha_Último_Mantenimiento] [char](8) NULL,
	[GM_Fecha_Ultima_Reparación] [char](8) NULL,
	[GM_NroPeriodo_Mantenimiento] [int] NULL,
	[GM_Fecha_Proximo_Mantenimiento] [char](8) NULL,
	[GM_Observaciones] [varchar](100) NULL,
	[GM_Numero_Equipo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ficha_Equipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ESTADO_CITA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ESTADO_CITA](
	[ID_EstadoCita] [int] IDENTITY(1,1) NOT NULL,
	[DesEstado] [int] NULL,
 CONSTRAINT [PK_EstadoCitas] PRIMARY KEY CLUSTERED 
(
	[ID_EstadoCita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ESPECIALIDAD]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ESPECIALIDAD](
	[ID_Especialidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TB_ESPECIALIDAD] PRIMARY KEY CLUSTERED 
(
	[ID_Especialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_EMPLEADO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_EMPLEADO](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[E_Nombre] [varchar](100) NULL,
	[E_Apellido_Paterno] [varchar](100) NULL,
	[E_Apellido_Materno] [varchar](100) NULL,
	[E_dni] [varchar](100) NULL,
	[E_Direccion] [varchar](100) NULL,
	[E_Telefono] [varchar](100) NULL,
	[E_Tipo_Empleado] [varchar](15) NULL,
	[E_Fecha_Nacimiento] [date] NULL,
	[E_Correo] [varchar](100) NULL,
	[Apellidos_Empleado] [varchar](100) NULL,
	[Nombres_Empleado] [varchar](100) NULL,
	[Cargo_Empleado] [varchar](100) NULL,
	[Correo_Empleado] [varchar](100) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK__TB_EMPLE__8BA57B4834C8D9D1] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_DETORDENSERVICIO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DETORDENSERVICIO](
	[ID_DetOrdenServicio] [int] NOT NULL,
	[ID_Item] [int] NOT NULL,
	[GE_Descuento] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DetOrdenServicio] ASC,
	[ID_Item] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DETALLE_ORDEN_DE_SALIDA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DETALLE_ORDEN_DE_SALIDA](
	[ID_DetalleOrdenSalida] [int] NOT NULL,
	[ID_NroItem] [int] NOT NULL,
	[GE_Cantidad] [real] NULL,
 CONSTRAINT [PK__TB_DETAL__811E67973C69FB99] PRIMARY KEY CLUSTERED 
(
	[ID_DetalleOrdenSalida] ASC,
	[ID_NroItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DETALLE_ORDEN_DE_PEDIDO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DETALLE_ORDEN_DE_PEDIDO](
	[ID_DetalleOrdenPedido] [int] NOT NULL,
	[ID_NroItem] [int] NOT NULL,
	[GE_Cantidad] [real] NULL,
 CONSTRAINT [PK__TB_DETAL__F12BD84E403A8C7D] PRIMARY KEY CLUSTERED 
(
	[ID_DetalleOrdenPedido] ASC,
	[ID_NroItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CRONOGRAMA_EMERGENCIA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CRONOGRAMA_EMERGENCIA](
	[ID_CronogramaEmergencia] [int] NOT NULL,
	[ID_TURNO] [int] NOT NULL,
	[GE_DIAS] [varchar](15) NULL,
	[GE_Empleado] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CronogramaEmergencia] ASC,
	[ID_TURNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_INFORME_ADMINISTRATIVO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_INFORME_ADMINISTRATIVO](
	[ID_Tipo_Informe] [int] IDENTITY(1,1) NOT NULL,
	[IA_Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK__TB_TIPO___80C6BE674D94879B] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo_Informe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_EXAMEN_MEDICO](
	[ID_Tipo_Examen] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[GE_DescripciónGeneral] [varchar](200) NULL,
 CONSTRAINT [PK_TB_TIPO_EXAMEN_MEDICO] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo_Examen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_EMPLEADO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_EMPLEADO](
	[ID_Tipo_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[E_Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK__TB_TIPO___9B40B73E534D60F1] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_DOCUMENTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_DOCUMENTO](
	[ID_TipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[GA_Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_T_CL_ES_GC_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[ID_TipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_ANALISIS]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_ANALISIS](
	[ID_TipoAnalisis] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[TipoResultado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TipoAnalisis] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_SOLICITUDES_DE_CAMBIO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_SOLICITUDES_DE_CAMBIO](
	[ID_SolicitudCambio] [int] IDENTITY(1,1) NOT NULL,
	[GE_Empleado] [varchar](15) NULL,
	[GE_Turno_Actual] [int] NULL,
	[GE_turno_cambiar] [int] NULL,
	[GE_Fecha_cambio] [date] NULL,
	[GE_APROBACION] [varchar](1) NULL,
 CONSTRAINT [PK__TB_SOLIC__3A528DAE571DF1D5] PRIMARY KEY CLUSTERED 
(
	[ID_SolicitudCambio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_SOLICITUD_MANTENIMIENTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_SOLICITUD_MANTENIMIENTO](
	[ID_SolicitudMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[GM_Fecha_Creacion] [char](8) NULL,
	[GM_CodigoSolicitante] [char](8) NULL,
	[GM_CodigoBeneficiario] [char](8) NULL,
	[Codigo_CC] [char](8) NULL,
	[GM_Tipo_Servicio] [varchar](50) NULL,
	[GM_Numero_Equipo] [char](8) NULL,
	[GM_FechaIncidencia] [char](8) NULL,
	[GM_Detalle_Servicio] [varchar](100) NULL,
	[GM_Observación] [varchar](100) NULL,
	[GM_Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SolicitudMantenimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_SERVICIO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_SERVICIO](
	[ID_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[GE_NombreServicio] [varchar](50) NULL,
	[GE_DescripcionServicio] [varchar](200) NULL,
	[GE_CostoServicio] [real] NULL,
 CONSTRAINT [PK__TB_SERVI__329D39475EBF139D] PRIMARY KEY CLUSTERED 
(
	[ID_Servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_REQUISITO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_REQUISITO](
	[ID_Requisito] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TB_REQUISITO] PRIMARY KEY CLUSTERED 
(
	[ID_Requisito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_TRABAJO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_TRABAJO](
	[ID_Orden_Trabajo] [int] IDENTITY(1,1) NOT NULL,
	[GM_Fecha_Creación] [char](8) NULL,
	[GM_Fecha_Asignación] [char](8) NULL,
	[GM_Fecha_Inicio] [char](8) NULL,
	[GM_Prioridad] [varchar](100) NULL,
	[GM_Fecha_Fin] [char](8) NULL,
	[GM_TiempoAprox] [int] NULL,
	[GM_Indicaciones] [varchar](100) NULL,
	[GM_Tipo_Atención] [varchar](100) NULL,
	[GM_Estado] [int] NULL,
	[GM_Moti_Recha_Acepta] [varchar](100) NULL,
	[GM_Origen] [varchar](100) NULL,
	[GM_Fecha_Recha_Acepta] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Trabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TURNO_EMERGENCIA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TURNO_EMERGENCIA](
	[ID_TURNOEMERGENCIA] [int] IDENTITY(1,1) NOT NULL,
	[GE_Horario_INI] [date] NULL,
	[GE_Horario_FIN] [date] NULL,
 CONSTRAINT [PK__TB_TURNO__CEBCE64768487DD7] PRIMARY KEY CLUSTERED 
(
	[ID_TURNOEMERGENCIA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ORDEN_DE_SALIDA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_DE_SALIDA](
	[ID_OrdenSalida] [int] IDENTITY(1,1) NOT NULL,
	[GE_FechaSalida] [date] NULL,
	[GE_Observacion] [varchar](100) NULL,
 CONSTRAINT [PK__TB_ORDEN__FB4F33096C190EBB] PRIMARY KEY CLUSTERED 
(
	[ID_OrdenSalida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PLAN_MANTENIMIENTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PLAN_MANTENIMIENTO](
	[ID_PlanMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[GM_Fecha_Creación] [char](8) NULL,
	[GM_Periodo_Inicio] [char](8) NULL,
	[GM_Periodo_Final] [char](8) NULL,
	[GM_Estado] [int] NULL,
	[GM_Codigo_Plan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PlanMantenimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_INFORME_EQUIPO_DET]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_INFORME_EQUIPO_DET](
	[ID_InformeEquipoDet] [int] IDENTITY(1,1) NOT NULL,
	[ID_InformeEquipo] [int] NULL,
	[GM_Fecha_Ejecución] [char](8) NULL,
	[GM_Tiempo_Ejecución] [int] NULL,
	[GM_Motivo_Rechazo] [varchar](100) NULL,
	[GM_Documento_adjunto] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_InformeEquipoDet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PACIENTE]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PACIENTE](
	[ID_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[GA_Nombre] [varchar](255) NOT NULL,
	[GA_DocumentoIdentidad] [varchar](255) NOT NULL,
	[GA_EstadoCivil] [varchar](255) NOT NULL,
	[GA_FechaNacimiento] [datetime] NOT NULL,
	[GA_Celular] [varchar](255) NULL,
	[GA_TelefonoDomicilio] [varchar](255) NOT NULL,
	[GA_Pais] [varchar](255) NOT NULL,
	[GA_Departamento] [varchar](255) NOT NULL,
	[GA_Provincia] [varchar](255) NOT NULL,
	[GA_Distrito] [varchar](255) NOT NULL,
	[GA_Direccion] [varchar](255) NOT NULL,
	[GA_Sexo] [varchar](255) NOT NULL,
	[GA_Ocupacion] [varchar](255) NULL,
	[ID_TipoDocumento] [int] NOT NULL,
	[dni_paciente] [varchar](8) NULL,
	[nombres] [varchar](50) NULL,
	[ApellidoPat] [varchar](100) NULL,
	[ApellidoMat] [varchar](100) NULL,
 CONSTRAINT [PK_T_CL_CO_GC_Paciente] PRIMARY KEY CLUSTERED 
(
	[ID_Paciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_TRABAJO_DET]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_TRABAJO_DET](
	[ID_Orden_Trabajo_Det] [int] IDENTITY(1,1) NOT NULL,
	[ID_Orden_Trabajo] [int] NULL,
	[GM_Tiempo_Atención] [int] NULL,
	[GM_Fecha_Rechazo] [char](8) NULL,
	[GM_Motivo_Rechazo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Trabajo_Det] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_CONSULTORIO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CONSULTORIO](
	[ID_Consultorio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[nro_consultorio] [varchar](10) NULL,
	[ID_Local] [int] NULL,
	[ID_Tipo_Examen] [int] NULL,
	[Piso] [varchar](20) NULL,
 CONSTRAINT [PK_TB_CONSULTORIO] PRIMARY KEY CLUSTERED 
(
	[ID_Consultorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_AGENDA_MEDICA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AGENDA_MEDICA](
	[ID_AgendaMedica] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[HoraInicio] [datetime] NULL,
	[HoraFin] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[ID_Medico] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_AgendaMedica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOGO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CATALOGO_EXAMEN_MEDICO](
	[ID_Catalogo_Examen] [int] IDENTITY(1,1) NOT NULL,
	[nom_examen] [varchar](50) NULL,
	[precio] [decimal](10, 2) NULL,
	[ID_Tipo_Examen] [int] NULL,
 CONSTRAINT [PK_TB_CATALOGO_EXAMEN_MEDICO] PRIMARY KEY CLUSTERED 
(
	[ID_Catalogo_Examen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MEDICOESPECIALIDAD]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MEDICOESPECIALIDAD](
	[ID_Medico] [int] NOT NULL,
	[ID_Especialidad] [int] NOT NULL,
 CONSTRAINT [PK_TB_MEDICOESPECIALIDAD] PRIMARY KEY CLUSTERED 
(
	[ID_Medico] ASC,
	[ID_Especialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_HOJA_INGRESO_HOSPITALIZACION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_HOJA_INGRESO_HOSPITALIZACION](
	[ID_Hoja_Ingreso_Hospitalizacion] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaIngreso] [datetime] NOT NULL,
	[GA_HoraIngreso] [datetime] NOT NULL,
	[GA_ViaIngreso] [varchar](255) NOT NULL,
	[GA_TipoOrden] [varchar](255) NOT NULL,
	[GA_Tratamiento] [varchar](255) NOT NULL,
	[ID_Paciente] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Hooja_Ingreso_Hospitalizacion] PRIMARY KEY CLUSTERED 
(
	[ID_Hoja_Ingreso_Hospitalizacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_HOJA_INGRESO_EMERGENCIA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA](
	[ID_Hoja_Ingreso_Emergencia] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaHoraIngreso] [datetime] NOT NULL,
	[ID_Paciente] [int] NOT NULL,
	[ID_Especialidad] [int] NOT NULL,
	[ID_Medico] [int] NOT NULL,
	[GA_MotivoIngreso] [varchar](255) NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Hoja_Ingreso_Emergencia] PRIMARY KEY CLUSTERED 
(
	[ID_Hoja_Ingreso_Emergencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_HISTORIA_CLINICA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_HISTORIA_CLINICA](
	[ID_Historia] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaRegistro] [datetime] NOT NULL,
	[GA_Antecedentes] [varchar](255) NOT NULL,
	[GE_Descripcion] [varchar](400) NULL,
	[GE_FechaAtencion] [date] NULL,
	[ID_Paciente] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_CO_GC_Historia_Clinica] PRIMARY KEY CLUSTERED 
(
	[ID_Historia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MEDICO_DE_TURNO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MEDICO_DE_TURNO](
	[ID_MedicoTurno] [int] IDENTITY(1,1) NOT NULL,
	[ID_Consultorio] [int] NULL,
	[ID_Medico] [int] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_TB_MEDICO_DE_TURNO] PRIMARY KEY CLUSTERED 
(
	[ID_MedicoTurno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CATALOGO_REQUISITO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATALOGO_REQUISITO](
	[ID_Catalogo_Examen] [int] NOT NULL,
	[ID_Requisito] [int] NOT NULL,
 CONSTRAINT [PK_TB_CATALOGO_REQUISITO] PRIMARY KEY CLUSTERED 
(
	[ID_Catalogo_Examen] ASC,
	[ID_Requisito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ORDEN_DE_PROCEDIMIENTO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_DE_PROCEDIMIENTO](
	[ID_Orden_de_Procedimiento] [int] IDENTITY(1,1) NOT NULL,
	[GA_NombreOrdenProcedimiento] [varchar](255) NOT NULL,
	[GA_FechaOrdenProcedimiento] [datetime] NOT NULL,
	[GA_CartaGarantia] [varchar](255) NOT NULL,
	[ID_Paciente] [int] NOT NULL,
	[ID_Medico] [int] NOT NULL,
	[GA_Estado] [varchar](255) NOT NULL,
	[GA_Aseguradora] [varchar](150) NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Orden_de_Procedimiento] PRIMARY KEY CLUSTERED 
(
	[ID_Orden_de_Procedimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_INTERNA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_INTERNA](
	[ID_Orden_Interna] [int] IDENTITY(1,1) NOT NULL,
	[ID_Tipo_Atencion] [varchar](1) NULL,
	[ID_Paciente] [int] NULL,
	[ID_Historia] [int] NULL,
 CONSTRAINT [PK_TB_ORDEN_INTERNA] PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Interna] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_CAMA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CAMA](
	[ID_Cama] [int] IDENTITY(1,1) NOT NULL,
	[GA_NroCama] [varchar](255) NOT NULL,
	[GA_TipoCama] [varchar](255) NOT NULL,
	[GA_Ubicacion] [varchar](255) NOT NULL,
	[GA_Estado] [varchar](255) NOT NULL,
	[ID_Hoja_Ingreso_Hospitalizacion] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_ES_GO_Cama] PRIMARY KEY CLUSTERED 
(
	[ID_Cama] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_CITA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CITA](
	[ID_Cita] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaHoraCita] [datetime] NOT NULL,
	[GA_Aseguradora] [varchar](255) NULL,
	[GA_Cobertura] [float] NULL,
	[GA_Estado] [varchar](255) NOT NULL,
	[GA_OrdenAtencion] [varchar](255) NULL,
	[ID_Paciente] [int] NOT NULL,
	[ID_Historia] [int] NULL,
	[ID_Especialidad] [int] NOT NULL,
	[ID_Medico] [int] NOT NULL,
	[ID_AgendaMedica] [int] NOT NULL,
	[ID_EstadoCita] [int] NULL,
 CONSTRAINT [PK_T_CL_CO_GC_Cita] PRIMARY KEY CLUSTERED 
(
	[ID_Cita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_CONSULTA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CONSULTA](
	[ID_Consulta] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraInicio] [datetime] NOT NULL,
	[FechaHoraFin] [datetime] NULL,
	[Observaciones] [varchar](100) NULL,
	[ID_Medico] [int] NOT NULL,
	[ID_Cita] [int] NOT NULL,
	[ID_Consultorio] [int] NOT NULL,
	[ID_Paciente] [int] NOT NULL,
	[Diagnostico] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Consulta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_COMPROBANTE_DE_PAGO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_COMPROBANTE_DE_PAGO](
	[ID_Comprobante_Pago] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaComprobante] [datetime] NOT NULL,
	[GA_TipoComprobante] [varchar](255) NOT NULL,
	[GA_FormaDePago] [varchar](255) NOT NULL,
	[GA_MontoComprobante] [float] NOT NULL,
	[GA_ConceptoDePago] [varchar](255) NOT NULL,
	[ID_Cita] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_CO_GC_Comprobante_de_Pago] PRIMARY KEY CLUSTERED 
(
	[ID_Comprobante_Pago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO](
	[ID_Orden_Examen_Medico] [int] IDENTITY(1,1) NOT NULL,
	[ID_Medico] [int] NULL,
	[ID_Orden_Interna] [int] NULL,
	[fecha] [datetime] NULL,
	[ID_Catalogo_Examen] [int] NULL,
	[estado] [varchar](1) NULL,
	[observacion] [varchar](250) NULL,
	[GE_FechaSolicitud] [date] NULL,
	[GE_Paciente] [varchar](200) NULL,
	[GE_DetalleTecnico] [varchar](200) NULL,
	[GE_TipoExamen] [varchar](15) NULL,
	[GE_NombreMedico] [varchar](50) NULL,
	[GE_CodigoOrdenExamen] [int] NULL,
 CONSTRAINT [PK_TB_ORDEN_EXAMEN_MEDICO_1] PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Examen_Medico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TURNO_ATENCION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TURNO_ATENCION](
	[ID_Medico] [int] NOT NULL,
	[ID_Cita] [int] NOT NULL,
	[ID_TURNOATENCION] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaRegistro] [datetime] NOT NULL,
	[GA_FechaAtencion] [datetime] NULL,
 CONSTRAINT [PK_T_CL_ES_GC_TurnoAtencion] PRIMARY KEY CLUSTERED 
(
	[ID_Medico] ASC,
	[ID_Cita] ASC,
	[ID_TURNOATENCION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ORDEN_SERVICIO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_SERVICIO](
	[ID_Orden_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaOrdenPago] [datetime] NULL,
	[GA_MontoOrdenPago] [float] NULL,
	[GA_ConceptoPago] [varchar](255) NULL,
	[ID_Cita] [int] NULL,
	[GE_FechaSolicitud] [date] NULL,
	[GE_Subtotal] [real] NULL,
	[GE_IGV] [real] NULL,
	[GE_Total] [real] NULL,
	[fecha] [datetime] NULL,
	[ID_Orden_Examen_Medico] [int] NULL,
	[estado] [varchar](1) NULL,
	[importe] [decimal](10, 2) NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Orden_de_Pago] PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ORDEN_HOSPITALIZACION]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ORDEN_HOSPITALIZACION](
	[ID_Orden_Hospitalizacion] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaOrden] [datetime] NOT NULL,
	[GA_Prevision] [varchar](255) NOT NULL,
	[GA_Motivo] [varchar](255) NOT NULL,
	[GA_Tratamiento] [varchar](255) NOT NULL,
	[GA_NroDiasHospitalizacion] [int] NOT NULL,
	[GA_ExamenesPreOperatorios] [varchar](255) NOT NULL,
	[GA_MedicoTratante] [varchar](255) NOT NULL,
	[GA_MedicoTurno] [varchar](255) NOT NULL,
	[ID_Paciente] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Observaciones] [varchar](100) NULL,
	[FechaHoraAlta] [datetime] NULL,
	[ID_Motivo_Hospitalizacion] [int] NOT NULL,
	[ID_Consulta] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Orden_Hospitalizacion] PRIMARY KEY CLUSTERED 
(
	[ID_Orden_Hospitalizacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES](
	[ID_Programacion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Orden_Examen_Medico] [int] NULL,
	[ID_MedicoTurno] [int] NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_TB_PROGRAMACION_ATENCION_EXAMENES_1] PRIMARY KEY CLUSTERED 
(
	[ID_Programacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PRESCRIPCION_MEDICA]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PRESCRIPCION_MEDICA](
	[ID_Prescripcion_Medica] [int] IDENTITY(1,1) NOT NULL,
	[GA_FechaPrescripcion] [datetime] NOT NULL,
	[GA_Doctor] [varchar](255) NOT NULL,
	[ID_Paciente] [int] NOT NULL,
	[ID_Medico] [int] NOT NULL,
	[Dosis] [varchar](50) NULL,
	[Frecuencia] [varchar](50) NULL,
	[ID_Medicamento] [int] NOT NULL,
	[ID_Consulta] [int] NOT NULL,
 CONSTRAINT [PK_T_CL_ES_GC_Prescripción_Médica] PRIMARY KEY CLUSTERED 
(
	[ID_Prescripcion_Medica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_INFORME_RESULTADO]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_INFORME_RESULTADO](
	[ID_InformeResultado] [int] IDENTITY(1,1) NOT NULL,
	[ID_Orden_Examen_Medico] [int] NULL,
	[fecha] [datetime] NULL,
	[resultado] [varchar](250) NULL,
	[observacion] [varchar](250) NULL,
	[estado] [varchar](1) NULL,
 CONSTRAINT [PK_Resultado_Examen] PRIMARY KEY CLUSTERED 
(
	[ID_InformeResultado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_ANALISIS]    Script Date: 03/05/2014 20:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_ANALISIS](
	[ID_Analisis] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[FechaAnalisis] [datetime] NULL,
	[Resultado] [varchar](50) NULL,
	[Observaciones] [varchar](100) NULL,
	[ID_Consulta] [int] NOT NULL,
	[ID_TipoAnalisis] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Analisis] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_TB_AgendaMedica_TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_AGENDA_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_TB_AgendaMedica_TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_AGENDA_MEDICA] CHECK CONSTRAINT [FK_TB_AgendaMedica_TB_MEDICO]
GO
/****** Object:  ForeignKey [FK__TB_Analis__Codig__2DE6D218]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ANALISIS]  WITH CHECK ADD FOREIGN KEY([ID_TipoAnalisis])
REFERENCES [dbo].[TB_TIPO_ANALISIS] ([ID_TipoAnalisis])
GO
/****** Object:  ForeignKey [FK__TB_Analis__Codig__2EDAF651]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ANALISIS]  WITH CHECK ADD FOREIGN KEY([ID_Consulta])
REFERENCES [dbo].[TB_CONSULTA] ([ID_Consulta])
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GO_Cama63]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CAMA]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GO_Cama63] FOREIGN KEY([ID_Hoja_Ingreso_Hospitalizacion])
REFERENCES [dbo].[TB_HOJA_INGRESO_HOSPITALIZACION] ([ID_Hoja_Ingreso_Hospitalizacion])
GO
ALTER TABLE [dbo].[TB_CAMA] CHECK CONSTRAINT [FK_T_CL_ES_GO_Cama63]
GO
/****** Object:  ForeignKey [FK_TB_CATALOGO_EXAMEN_MEDICO_TB_TIPO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CATALOGO_EXAMEN_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK_TB_CATALOGO_EXAMEN_MEDICO_TB_TIPO_EXAMEN_MEDICO] FOREIGN KEY([ID_Tipo_Examen])
REFERENCES [dbo].[TB_TIPO_EXAMEN_MEDICO] ([ID_Tipo_Examen])
GO
ALTER TABLE [dbo].[TB_CATALOGO_EXAMEN_MEDICO] CHECK CONSTRAINT [FK_TB_CATALOGO_EXAMEN_MEDICO_TB_TIPO_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_CATALOGO_REQUISITO_TB_CATALOGO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CATALOGO_REQUISITO]  WITH CHECK ADD  CONSTRAINT [FK_TB_CATALOGO_REQUISITO_TB_CATALOGO_EXAMEN_MEDICO] FOREIGN KEY([ID_Catalogo_Examen])
REFERENCES [dbo].[TB_CATALOGO_EXAMEN_MEDICO] ([ID_Catalogo_Examen])
GO
ALTER TABLE [dbo].[TB_CATALOGO_REQUISITO] CHECK CONSTRAINT [FK_TB_CATALOGO_REQUISITO_TB_CATALOGO_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_CATALOGO_REQUISITO_TB_REQUISITO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CATALOGO_REQUISITO]  WITH CHECK ADD  CONSTRAINT [FK_TB_CATALOGO_REQUISITO_TB_REQUISITO] FOREIGN KEY([ID_Requisito])
REFERENCES [dbo].[TB_REQUISITO] ([ID_Requisito])
GO
ALTER TABLE [dbo].[TB_CATALOGO_REQUISITO] CHECK CONSTRAINT [FK_TB_CATALOGO_REQUISITO_TB_REQUISITO]
GO
/****** Object:  ForeignKey [FK_T_CL_CO_GC_Cita55]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_CO_GC_Cita55] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_T_CL_CO_GC_Cita55]
GO
/****** Object:  ForeignKey [FK_T_CL_CO_GC_Cita60]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_CO_GC_Cita60] FOREIGN KEY([ID_Historia])
REFERENCES [dbo].[TB_HISTORIA_CLINICA] ([ID_Historia])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_T_CL_CO_GC_Cita60]
GO
/****** Object:  ForeignKey [FK_TB_CITA_00TB_ESPECIALIDAD]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_TB_CITA_00TB_ESPECIALIDAD] FOREIGN KEY([ID_Especialidad])
REFERENCES [dbo].[TB_ESPECIALIDAD] ([ID_Especialidad])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_TB_CITA_00TB_ESPECIALIDAD]
GO
/****** Object:  ForeignKey [FK_TB_CITA_00TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_TB_CITA_00TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_TB_CITA_00TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_CITA_TB_AgendaMedica]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_TB_CITA_TB_AgendaMedica] FOREIGN KEY([ID_AgendaMedica])
REFERENCES [dbo].[TB_AGENDA_MEDICA] ([ID_AgendaMedica])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_TB_CITA_TB_AgendaMedica]
GO
/****** Object:  ForeignKey [FK_TB_CITA_TB_Estado_Cita]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CITA]  WITH CHECK ADD  CONSTRAINT [FK_TB_CITA_TB_Estado_Cita] FOREIGN KEY([ID_EstadoCita])
REFERENCES [dbo].[TB_ESTADO_CITA] ([ID_EstadoCita])
GO
ALTER TABLE [dbo].[TB_CITA] CHECK CONSTRAINT [FK_TB_CITA_TB_Estado_Cita]
GO
/****** Object:  ForeignKey [FK_T_CL_CO_GC_Comprobante_de_Pago51]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_COMPROBANTE_DE_PAGO]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_CO_GC_Comprobante_de_Pago51] FOREIGN KEY([ID_Cita])
REFERENCES [dbo].[TB_CITA] ([ID_Cita])
GO
ALTER TABLE [dbo].[TB_COMPROBANTE_DE_PAGO] CHECK CONSTRAINT [FK_T_CL_CO_GC_Comprobante_de_Pago51]
GO
/****** Object:  ForeignKey [FK_TB_Consulta_TB_CITA]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_TB_Consulta_TB_CITA] FOREIGN KEY([ID_Cita])
REFERENCES [dbo].[TB_CITA] ([ID_Cita])
GO
ALTER TABLE [dbo].[TB_CONSULTA] CHECK CONSTRAINT [FK_TB_Consulta_TB_CITA]
GO
/****** Object:  ForeignKey [FK_TB_Consulta_TB_CONSULTORIO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_TB_Consulta_TB_CONSULTORIO] FOREIGN KEY([ID_Consultorio])
REFERENCES [dbo].[TB_CONSULTORIO] ([ID_Consultorio])
GO
ALTER TABLE [dbo].[TB_CONSULTA] CHECK CONSTRAINT [FK_TB_Consulta_TB_CONSULTORIO]
GO
/****** Object:  ForeignKey [FK_TB_Consulta_TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_TB_Consulta_TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_CONSULTA] CHECK CONSTRAINT [FK_TB_Consulta_TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_Consulta_TB_PACIENTE]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTA]  WITH CHECK ADD  CONSTRAINT [FK_TB_Consulta_TB_PACIENTE] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_CONSULTA] CHECK CONSTRAINT [FK_TB_Consulta_TB_PACIENTE]
GO
/****** Object:  ForeignKey [FK_TB_CONSULTORIO_TB_LOCAL]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTORIO]  WITH CHECK ADD  CONSTRAINT [FK_TB_CONSULTORIO_TB_LOCAL] FOREIGN KEY([ID_Local])
REFERENCES [dbo].[TB_LOCAL] ([ID_Local])
GO
ALTER TABLE [dbo].[TB_CONSULTORIO] CHECK CONSTRAINT [FK_TB_CONSULTORIO_TB_LOCAL]
GO
/****** Object:  ForeignKey [FK_TB_CONSULTORIO_TB_TIPO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_CONSULTORIO]  WITH CHECK ADD  CONSTRAINT [FK_TB_CONSULTORIO_TB_TIPO_EXAMEN_MEDICO] FOREIGN KEY([ID_Tipo_Examen])
REFERENCES [dbo].[TB_TIPO_EXAMEN_MEDICO] ([ID_Tipo_Examen])
GO
ALTER TABLE [dbo].[TB_CONSULTORIO] CHECK CONSTRAINT [FK_TB_CONSULTORIO_TB_TIPO_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_HISTORIA_CLINICA_TB_PACIENTE1]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_HISTORIA_CLINICA]  WITH CHECK ADD  CONSTRAINT [FK_TB_HISTORIA_CLINICA_TB_PACIENTE1] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_HISTORIA_CLINICA] CHECK CONSTRAINT [FK_TB_HISTORIA_CLINICA_TB_PACIENTE1]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Hoja_Ingreso_Emergencia54]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Hoja_Ingreso_Emergencia54] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA] CHECK CONSTRAINT [FK_T_CL_ES_GC_Hoja_Ingreso_Emergencia54]
GO
/****** Object:  ForeignKey [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_ESPECIALIDAD]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA]  WITH CHECK ADD  CONSTRAINT [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_ESPECIALIDAD] FOREIGN KEY([ID_Especialidad])
REFERENCES [dbo].[TB_ESPECIALIDAD] ([ID_Especialidad])
GO
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA] CHECK CONSTRAINT [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_ESPECIALIDAD]
GO
/****** Object:  ForeignKey [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA]  WITH CHECK ADD  CONSTRAINT [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_HOJA_INGRESO_EMERGENCIA] CHECK CONSTRAINT [FK_TB_HOJA_INGRESO_EMERGENCIA_00TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Hooja_Ingreso_Hospitalizacion58]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_HOJA_INGRESO_HOSPITALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Hooja_Ingreso_Hospitalizacion58] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_HOJA_INGRESO_HOSPITALIZACION] CHECK CONSTRAINT [FK_T_CL_ES_GC_Hooja_Ingreso_Hospitalizacion58]
GO
/****** Object:  ForeignKey [FK__TB_INFORM__GM_Nr__44CA3770]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_INFORME_EQUIPO_DET]  WITH CHECK ADD FOREIGN KEY([ID_InformeEquipo])
REFERENCES [dbo].[TB_INFORME_EQUIPO] ([ID_InformeEquipo])
GO
/****** Object:  ForeignKey [FK_TB_INFORME_RESULTADO_TB_ORDEN_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_INFORME_RESULTADO]  WITH CHECK ADD  CONSTRAINT [FK_TB_INFORME_RESULTADO_TB_ORDEN_EXAMEN_MEDICO] FOREIGN KEY([ID_Orden_Examen_Medico])
REFERENCES [dbo].[TB_ORDEN_EXAMEN_MEDICO] ([ID_Orden_Examen_Medico])
GO
ALTER TABLE [dbo].[TB_INFORME_RESULTADO] CHECK CONSTRAINT [FK_TB_INFORME_RESULTADO_TB_ORDEN_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_MEDICO_DE_TURNO_TB_CONSULTORIO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_MEDICO_DE_TURNO]  WITH CHECK ADD  CONSTRAINT [FK_TB_MEDICO_DE_TURNO_TB_CONSULTORIO] FOREIGN KEY([ID_Consultorio])
REFERENCES [dbo].[TB_CONSULTORIO] ([ID_Consultorio])
GO
ALTER TABLE [dbo].[TB_MEDICO_DE_TURNO] CHECK CONSTRAINT [FK_TB_MEDICO_DE_TURNO_TB_CONSULTORIO]
GO
/****** Object:  ForeignKey [FK_TB_MEDICO_DE_TURNO_TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_MEDICO_DE_TURNO]  WITH CHECK ADD  CONSTRAINT [FK_TB_MEDICO_DE_TURNO_TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_MEDICO_DE_TURNO] CHECK CONSTRAINT [FK_TB_MEDICO_DE_TURNO_TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_MEDICOESPECIALIDAD_TB_ESPECIALIDAD]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_MEDICOESPECIALIDAD]  WITH CHECK ADD  CONSTRAINT [FK_TB_MEDICOESPECIALIDAD_TB_ESPECIALIDAD] FOREIGN KEY([ID_Especialidad])
REFERENCES [dbo].[TB_ESPECIALIDAD] ([ID_Especialidad])
GO
ALTER TABLE [dbo].[TB_MEDICOESPECIALIDAD] CHECK CONSTRAINT [FK_TB_MEDICOESPECIALIDAD_TB_ESPECIALIDAD]
GO
/****** Object:  ForeignKey [FK_TB_MEDICOESPECIALIDAD_TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_MEDICOESPECIALIDAD]  WITH CHECK ADD  CONSTRAINT [FK_TB_MEDICOESPECIALIDAD_TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_MEDICOESPECIALIDAD] CHECK CONSTRAINT [FK_TB_MEDICOESPECIALIDAD_TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Orden_de_Procedimiento53]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_DE_PROCEDIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Orden_de_Procedimiento53] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_ORDEN_DE_PROCEDIMIENTO] CHECK CONSTRAINT [FK_T_CL_ES_GC_Orden_de_Procedimiento53]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_DE_PROCEDIMIENTO_00TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_DE_PROCEDIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_DE_PROCEDIMIENTO_00TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_ORDEN_DE_PROCEDIMIENTO] CHECK CONSTRAINT [FK_TB_ORDEN_DE_PROCEDIMIENTO_00TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_EXAMEN_MEDICO_TB_CATALOGO_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_CATALOGO_EXAMEN_MEDICO] FOREIGN KEY([ID_Catalogo_Examen])
REFERENCES [dbo].[TB_CATALOGO_EXAMEN_MEDICO] ([ID_Catalogo_Examen])
GO
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO] CHECK CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_CATALOGO_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_EXAMEN_MEDICO_TB_MEDICO1]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_MEDICO1] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO] CHECK CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_MEDICO1]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_EXAMEN_MEDICO_TB_ORDEN_INTERNA]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_ORDEN_INTERNA] FOREIGN KEY([ID_Orden_Interna])
REFERENCES [dbo].[TB_ORDEN_INTERNA] ([ID_Orden_Interna])
GO
ALTER TABLE [dbo].[TB_ORDEN_EXAMEN_MEDICO] CHECK CONSTRAINT [FK_TB_ORDEN_EXAMEN_MEDICO_TB_ORDEN_INTERNA]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Orden_Hospitalizacion56]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Orden_Hospitalizacion56] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION] CHECK CONSTRAINT [FK_T_CL_ES_GC_Orden_Hospitalizacion56]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_HOSPITALIZACION_TB_Consulta]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_HOSPITALIZACION_TB_Consulta] FOREIGN KEY([ID_Consulta])
REFERENCES [dbo].[TB_CONSULTA] ([ID_Consulta])
GO
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION] CHECK CONSTRAINT [FK_TB_ORDEN_HOSPITALIZACION_TB_Consulta]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_HOSPITALIZACION_TB_MOTIVO_HOSPITALIZACION]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_HOSPITALIZACION_TB_MOTIVO_HOSPITALIZACION] FOREIGN KEY([ID_Motivo_Hospitalizacion])
REFERENCES [dbo].[TB_MOTIVO_HOSPITALIZACION] ([ID_Motivo_Hospitalizacion])
GO
ALTER TABLE [dbo].[TB_ORDEN_HOSPITALIZACION] CHECK CONSTRAINT [FK_TB_ORDEN_HOSPITALIZACION_TB_MOTIVO_HOSPITALIZACION]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_INTERNA_TB_HISTORIA_CLINICA]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_INTERNA]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_INTERNA_TB_HISTORIA_CLINICA] FOREIGN KEY([ID_Historia])
REFERENCES [dbo].[TB_HISTORIA_CLINICA] ([ID_Historia])
GO
ALTER TABLE [dbo].[TB_ORDEN_INTERNA] CHECK CONSTRAINT [FK_TB_ORDEN_INTERNA_TB_HISTORIA_CLINICA]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Orden_de_Pago50]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Orden_de_Pago50] FOREIGN KEY([ID_Cita])
REFERENCES [dbo].[TB_CITA] ([ID_Cita])
GO
ALTER TABLE [dbo].[TB_ORDEN_SERVICIO] CHECK CONSTRAINT [FK_T_CL_ES_GC_Orden_de_Pago50]
GO
/****** Object:  ForeignKey [FK_TB_ORDEN_SERVICIO_TB_ORDEN_EXAMEN_MEDICO1]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDEN_SERVICIO_TB_ORDEN_EXAMEN_MEDICO1] FOREIGN KEY([ID_Orden_Examen_Medico])
REFERENCES [dbo].[TB_ORDEN_EXAMEN_MEDICO] ([ID_Orden_Examen_Medico])
GO
ALTER TABLE [dbo].[TB_ORDEN_SERVICIO] CHECK CONSTRAINT [FK_TB_ORDEN_SERVICIO_TB_ORDEN_EXAMEN_MEDICO1]
GO
/****** Object:  ForeignKey [FK__TB_ORDEN___GM_Nr__55009F39]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_ORDEN_TRABAJO_DET]  WITH CHECK ADD FOREIGN KEY([ID_Orden_Trabajo])
REFERENCES [dbo].[TB_ORDEN_TRABAJO] ([ID_Orden_Trabajo])
GO
/****** Object:  ForeignKey [FK_T_CL_CO_GC_Paciente_T_CL_ES_GC_TipoDocumento]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PACIENTE]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_CO_GC_Paciente_T_CL_ES_GC_TipoDocumento] FOREIGN KEY([ID_TipoDocumento])
REFERENCES [dbo].[TB_TIPO_DOCUMENTO] ([ID_TipoDocumento])
GO
ALTER TABLE [dbo].[TB_PACIENTE] CHECK CONSTRAINT [FK_T_CL_CO_GC_Paciente_T_CL_ES_GC_TipoDocumento]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_Prescripción_Médica57]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_Prescripción_Médica57] FOREIGN KEY([ID_Paciente])
REFERENCES [dbo].[TB_PACIENTE] ([ID_Paciente])
GO
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA] CHECK CONSTRAINT [FK_T_CL_ES_GC_Prescripción_Médica57]
GO
/****** Object:  ForeignKey [FK_TB_PRESCRIPCION_MEDICA_00TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_00TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA] CHECK CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_00TB_MEDICO]
GO
/****** Object:  ForeignKey [FK_TB_PRESCRIPCION_MEDICA_TB_Consulta]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_TB_Consulta] FOREIGN KEY([ID_Consulta])
REFERENCES [dbo].[TB_CONSULTA] ([ID_Consulta])
GO
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA] CHECK CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_TB_Consulta]
GO
/****** Object:  ForeignKey [FK_TB_PRESCRIPCION_MEDICA_TB_MEDICAMENTO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_TB_MEDICAMENTO] FOREIGN KEY([ID_Medicamento])
REFERENCES [dbo].[TB_MEDICAMENTO] ([ID_Medicamento])
GO
ALTER TABLE [dbo].[TB_PRESCRIPCION_MEDICA] CHECK CONSTRAINT [FK_TB_PRESCRIPCION_MEDICA_TB_MEDICAMENTO]
GO
/****** Object:  ForeignKey [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_MEDICO_DE_TURNO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES]  WITH CHECK ADD  CONSTRAINT [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_MEDICO_DE_TURNO] FOREIGN KEY([ID_MedicoTurno])
REFERENCES [dbo].[TB_MEDICO_DE_TURNO] ([ID_MedicoTurno])
GO
ALTER TABLE [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES] CHECK CONSTRAINT [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_MEDICO_DE_TURNO]
GO
/****** Object:  ForeignKey [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_ORDEN_EXAMEN_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES]  WITH CHECK ADD  CONSTRAINT [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_ORDEN_EXAMEN_MEDICO] FOREIGN KEY([ID_Orden_Examen_Medico])
REFERENCES [dbo].[TB_ORDEN_EXAMEN_MEDICO] ([ID_Orden_Examen_Medico])
GO
ALTER TABLE [dbo].[TB_PROGRAMACION_ATENCION_EXAMENES] CHECK CONSTRAINT [FK_TB_PROGRAMACION_ATENCION_EXAMENES_TB_ORDEN_EXAMEN_MEDICO]
GO
/****** Object:  ForeignKey [FK_T_CL_ES_GC_TurnoAtencion_T_CL_CO_GC_Cita]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_TURNO_ATENCION]  WITH CHECK ADD  CONSTRAINT [FK_T_CL_ES_GC_TurnoAtencion_T_CL_CO_GC_Cita] FOREIGN KEY([ID_Cita])
REFERENCES [dbo].[TB_CITA] ([ID_Cita])
GO
ALTER TABLE [dbo].[TB_TURNO_ATENCION] CHECK CONSTRAINT [FK_T_CL_ES_GC_TurnoAtencion_T_CL_CO_GC_Cita]
GO
/****** Object:  ForeignKey [FK_TB_TURNOATENCION_00TB_MEDICO]    Script Date: 03/05/2014 20:02:24 ******/
ALTER TABLE [dbo].[TB_TURNO_ATENCION]  WITH CHECK ADD  CONSTRAINT [FK_TB_TURNOATENCION_00TB_MEDICO] FOREIGN KEY([ID_Medico])
REFERENCES [dbo].[TB_MEDICO] ([ID_Medico])
GO
ALTER TABLE [dbo].[TB_TURNO_ATENCION] CHECK CONSTRAINT [FK_TB_TURNOATENCION_00TB_MEDICO]
GO
