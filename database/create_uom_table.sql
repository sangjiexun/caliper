-- SQL Server script file
-- set to your database name
USE [JPA]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

/****** Unit of Measure table ******/
IF OBJECT_ID('dbo.UOM', 'U') IS NOT NULL 
  DROP TABLE dbo.UOM
GO

CREATE TABLE [dbo].[UOM](
	[UOM_KEY] [bigint] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[SYMBOL] [nvarchar](16) NOT NULL,
	[DESCRIPTION] [nvarchar](512) NULL,
	[CATEGORY] [nvarchar](50) NULL,
	[UNIT_TYPE] [nvarchar](32) NULL,
	[UNIT] [nvarchar](32) NULL,
	[CONV_FACTOR] float NULL,
	[CONV_UOM_KEY] [bigint] NULL,
	[CONV_OFFSET] float NULL,
	[BRIDGE_FACTOR] float NULL,
	[BRIDGE_UOM_KEY] [bigint] NULL,
	[BRIDGE_OFFSET] float NULL,
	[UOM1_KEY] [bigint] NULL,
	[EXP1] [int] NULL,
	[UOM2_KEY] [bigint] NULL,
	[EXP2] [int] NULL,
	[VERSION] [int] NOT NULL,
 CONSTRAINT [PK_UOM] PRIMARY KEY CLUSTERED 
(
	[UOM_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_SYMBOL] UNIQUE NONCLUSTERED 
(
	[SYMBOL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO