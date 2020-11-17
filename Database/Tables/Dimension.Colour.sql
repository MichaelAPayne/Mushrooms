CREATE TABLE [Dimension].[Colour]
(
[ColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ColourDescription] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[Colour] ADD CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED  ([ColourId]) ON [PRIMARY]
GO
