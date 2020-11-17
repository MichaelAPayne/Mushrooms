CREATE TABLE [Dimension].[Habitat]
(
[HabitatId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HabitatDescription] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[Habitat] ADD CONSTRAINT [PK_Habitat] PRIMARY KEY CLUSTERED  ([HabitatId]) ON [PRIMARY]
GO
