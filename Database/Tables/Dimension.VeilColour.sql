CREATE TABLE [Dimension].[VeilColour]
(
[VeilColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VeilColourDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[VeilColour] ADD CONSTRAINT [PK_VeilColour] PRIMARY KEY CLUSTERED  ([VeilColourId]) ON [PRIMARY]
GO
