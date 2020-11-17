CREATE TABLE [Dimension].[CapColour]
(
[CapColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CapColourDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[CapColour] ADD CONSTRAINT [PK_CapColour] PRIMARY KEY CLUSTERED  ([CapColourId]) ON [PRIMARY]
GO
