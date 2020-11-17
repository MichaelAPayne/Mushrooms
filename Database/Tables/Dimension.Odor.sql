CREATE TABLE [Dimension].[Odor]
(
[OdorId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OdorDescription] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[Odor] ADD CONSTRAINT [PK_Odor] PRIMARY KEY CLUSTERED  ([OdorId]) ON [PRIMARY]
GO
