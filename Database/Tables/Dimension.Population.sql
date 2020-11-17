CREATE TABLE [Dimension].[Population]
(
[PopulationId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PopulationDescription] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[Population] ADD CONSTRAINT [PK_Population] PRIMARY KEY CLUSTERED  ([PopulationId]) ON [PRIMARY]
GO
