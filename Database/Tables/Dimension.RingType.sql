CREATE TABLE [Dimension].[RingType]
(
[RingTypeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RingTypeDescription] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[RingType] ADD CONSTRAINT [PK_RingType] PRIMARY KEY CLUSTERED  ([RingTypeId]) ON [PRIMARY]
GO
