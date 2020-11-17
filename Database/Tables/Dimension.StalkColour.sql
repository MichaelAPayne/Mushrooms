CREATE TABLE [Dimension].[StalkColour]
(
[StalkColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StalkColourDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[StalkColour] ADD CONSTRAINT [PK_StalkColour] PRIMARY KEY CLUSTERED  ([StalkColourId]) ON [PRIMARY]
GO
