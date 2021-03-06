USE [TP3_Emergencias]
GO
/****** Object:  Table [dbo].[CL_CV_GE_Paciente]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CL_CV_GE_Paciente](
	[GE_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[GE_Nombre] [nvarchar](20) NULL,
	[GE_ApellidoPaterno] [nvarchar](50) NULL,
	[GE_ApellidoMaterno] [nvarchar](50) NULL,
	[GE_FechaNacimiento] [datetime] NULL,
	[GE_DNI] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_CL_CV_GE_Paciente] PRIMARY KEY CLUSTERED 
(
	[GE_Paciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CL_CV_GE_Medico]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CL_CV_GE_Medico](
	[GE_Medico] [int] IDENTITY(1,1) NOT NULL,
	[GE_Nombre] [nvarchar](50) NULL,
	[GE_ApellidoPaterno] [nvarchar](50) NULL,
	[GE_ApellidoMaterno] [nvarchar](50) NULL,
	[GE_DNI] [nvarchar](8) NULL,
 CONSTRAINT [PK_CL_CV_GE_Medico] PRIMARY KEY CLUSTERED 
(
	[GE_Medico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CL_CV_GE_Atencion]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CL_CV_GE_Atencion](
	[GE_ATENCION] [int] IDENTITY(1,1) NOT NULL,
	[GE_FechaIngreso] [datetime] NOT NULL,
	[GE_Medico] [int] NOT NULL,
	[GE_Paciente] [int] NOT NULL,
	[GE_DescripcionObservaciones] [nvarchar](max) NULL,
 CONSTRAINT [PK_CL_CV_GE_Atencion] PRIMARY KEY CLUSTERED 
(
	[GE_ATENCION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CL_CV_GE_Turno]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CL_CV_GE_Turno](
	[GE_Turno] [int] IDENTITY(1,1) NOT NULL,
	[GE_FechaInicio] [datetime] NULL,
	[GE_FechaFin] [datetime] NULL,
	[GE_TipoTurno] [nvarchar](5) NULL,
	[GE_Medico] [int] NULL,
 CONSTRAINT [PK_CL_CV_GE] PRIMARY KEY CLUSTERED 
(
	[GE_Turno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_CrearPaciente]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_CrearPaciente]
@GE_Paciente int out, 
@GE_Nombre nvarchar(20), 
@GE_ApellidoPaterno nvarchar(50), 
@GE_ApellidoMaterno nvarchar(50), 
@GE_FechaNacimiento datetime,
@GE_DNI nvarchar(8)

AS

INSERT INTO [TP3_Emergencias].[dbo].[CL_CV_GE_Paciente]
           ([GE_Nombre]
           ,[GE_ApellidoPaterno]
           ,[GE_ApellidoMaterno]
           ,[GE_FechaNacimiento]
           ,[GE_DNI])
     VALUES
           (@GE_Nombre
           ,@GE_ApellidoPaterno
           ,@GE_ApellidoMaterno
           ,@GE_FechaNacimiento
           ,@GE_DNI)

set @GE_Paciente = scope_identity()
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_BuscarPaciente]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_BuscarPaciente]
@GE_DNI nvarchar(8)
as 
SELECT TOP 1 * FROM dbo.CL_CV_GE_Paciente WHERE GE_DNI = @GE_DNI
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_ListarAtencion]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_ListarAtencion]
@GE_DNI nvarchar(8),
@GE_ATENCION int
as
SELECT     CL_CV_GE_Atencion.GE_ATENCION, 
CL_CV_GE_Atencion.GE_FechaIngreso, 
CL_CV_GE_Paciente.GE_DNI as DNIPaciente, 
CL_CV_GE_Paciente.GE_Paciente AS idpaciente, 
CL_CV_GE_Paciente.GE_Nombre +  ' ' +
CL_CV_GE_Paciente.GE_ApellidoPaterno + ' ' +
CL_CV_GE_Paciente.GE_ApellidoMaterno AS Paciente, 
CL_CV_GE_Medico.GE_Medico AS idmedico, 
CL_CV_GE_Medico.GE_ApellidoPaterno + ' ' + 
CL_CV_GE_Medico.GE_ApellidoMaterno + ' ' + 
CL_CV_GE_Medico.GE_Nombre  as Medico,
CL_CV_GE_Medico.GE_DNI AS DNIMedico,
GE_DescripcionObservaciones
FROM  CL_CV_GE_Atencion INNER JOIN
CL_CV_GE_Medico ON CL_CV_GE_Atencion.GE_Medico = CL_CV_GE_Medico.GE_Medico INNER JOIN
CL_CV_GE_Paciente ON CL_CV_GE_Atencion.GE_Paciente = CL_CV_GE_Paciente.GE_Paciente
WHERE 
(@GE_DNI = ''  OR  CL_CV_GE_Paciente.GE_DNI = @GE_DNI )  
AND
(@GE_ATENCION = 0  OR  GE_ATENCION = @GE_ATENCION)
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_ListarMedicosPorTurno]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_ListarMedicosPorTurno]
@GE_TipoTurno nvarchar(5)
as 
SELECT     
CL_CV_GE_Medico.GE_Medico, 
CL_CV_GE_Medico.GE_Nombre, 
CL_CV_GE_Medico.GE_ApellidoPaterno, 
CL_CV_GE_Medico.GE_ApellidoMaterno, 
CL_CV_GE_Medico.GE_DNI
FROM 
CL_CV_GE_Turno INNER JOIN
CL_CV_GE_Medico  ON 
CL_CV_GE_Turno.GE_Medico = CL_CV_GE_Medico.GE_Medico
WHERE     (CL_CV_GE_Turno.GE_TipoTurno = @GE_TipoTurno) 
AND (GETDATE() >= CL_CV_GE_Turno.GE_FechaInicio) AND (GETDATE() <= CL_CV_GE_Turno.GE_FechaFin)
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_CrearAtencion]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_CrearAtencion]
@GE_ATENCION int out,
@GE_FechaIngreso datetime,
@GE_Medico int,
@GE_Paciente int,
@GE_DescripcionObservaciones nvarchar(max)

AS

INSERT INTO [TP3_Emergencias].[dbo].[CL_CV_GE_Atencion]
           ([GE_FechaIngreso]
           ,[GE_Medico]
           ,[GE_Paciente]
           ,[GE_DescripcionObservaciones])
     VALUES
           (@GE_FechaIngreso
           ,@GE_Medico
           ,@GE_Paciente
           ,@GE_DescripcionObservaciones)


set @GE_ATENCION = scope_identity()
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_EliminarAtencion]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_EliminarAtencion]
@GE_ATENCION int
as
DELETE FROM CL_CV_GE_Atencion WHERE GE_ATENCION = @GE_ATENCION
GO
/****** Object:  StoredProcedure [dbo].[usp_GA_ActualizarAtencion]    Script Date: 03/06/2014 18:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GA_ActualizarAtencion]
@GE_ATENCION int,
@GE_FechaIngreso datetime,
@GE_Medico int,
@GE_Paciente int,
@GE_DescripcionObservaciones nvarchar(max)

AS

INSERT INTO [TP3_Emergencias].[dbo].[CL_CV_GE_Atencion]
           ([GE_FechaIngreso]
           ,[GE_Medico]
           ,[GE_Paciente]
           ,[GE_DescripcionObservaciones])
     VALUES
           (@GE_FechaIngreso
           ,@GE_Medico
           ,@GE_Paciente
           ,@GE_DescripcionObservaciones)
           
           
UPDATE [TP3_Emergencias].[dbo].[CL_CV_GE_Atencion]
SET [GE_FechaIngreso] = @GE_FechaIngreso,[GE_Medico] = @GE_Medico ,[GE_Paciente] = @GE_Paciente,
[GE_DescripcionObservaciones] = @GE_DescripcionObservaciones
WHERE  GE_ATENCION = @GE_ATENCION
GO
/****** Object:  ForeignKey [FK_CL_CV_GE_Atencion_CL_CV_GE_Medico]    Script Date: 03/06/2014 18:02:16 ******/
ALTER TABLE [dbo].[CL_CV_GE_Atencion]  WITH CHECK ADD  CONSTRAINT [FK_CL_CV_GE_Atencion_CL_CV_GE_Medico] FOREIGN KEY([GE_Medico])
REFERENCES [dbo].[CL_CV_GE_Medico] ([GE_Medico])
GO
ALTER TABLE [dbo].[CL_CV_GE_Atencion] CHECK CONSTRAINT [FK_CL_CV_GE_Atencion_CL_CV_GE_Medico]
GO
/****** Object:  ForeignKey [FK_CL_CV_GE_Atencion_CL_CV_GE_Paciente]    Script Date: 03/06/2014 18:02:16 ******/
ALTER TABLE [dbo].[CL_CV_GE_Atencion]  WITH CHECK ADD  CONSTRAINT [FK_CL_CV_GE_Atencion_CL_CV_GE_Paciente] FOREIGN KEY([GE_Paciente])
REFERENCES [dbo].[CL_CV_GE_Paciente] ([GE_Paciente])
GO
ALTER TABLE [dbo].[CL_CV_GE_Atencion] CHECK CONSTRAINT [FK_CL_CV_GE_Atencion_CL_CV_GE_Paciente]
GO
/****** Object:  ForeignKey [FK_CL_CV_GE_Turno_CL_CV_GE_Medico]    Script Date: 03/06/2014 18:02:16 ******/
ALTER TABLE [dbo].[CL_CV_GE_Turno]  WITH CHECK ADD  CONSTRAINT [FK_CL_CV_GE_Turno_CL_CV_GE_Medico] FOREIGN KEY([GE_Medico])
REFERENCES [dbo].[CL_CV_GE_Medico] ([GE_Medico])
GO
ALTER TABLE [dbo].[CL_CV_GE_Turno] CHECK CONSTRAINT [FK_CL_CV_GE_Turno_CL_CV_GE_Medico]
GO
