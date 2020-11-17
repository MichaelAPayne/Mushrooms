CREATE TABLE [Dimension].[GillSize]
(
[GillSizeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GillSizeDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[GillSize] ADD CONSTRAINT [PK_GillSize] PRIMARY KEY CLUSTERED  ([GillSizeId]) ON [PRIMARY]
GO
