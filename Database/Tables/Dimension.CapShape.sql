CREATE TABLE [Dimension].[CapShape]
(
[CapShapeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CapShapeDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[CapShape] ADD CONSTRAINT [PK_CapShape] PRIMARY KEY CLUSTERED  ([CapShapeId]) ON [PRIMARY]
GO
