CREATE TABLE [Dimension].[GillColour]
(
[GillColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GillColourDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[GillColour] ADD CONSTRAINT [PK_GillColour] PRIMARY KEY CLUSTERED  ([GillColourId]) ON [PRIMARY]
GO
