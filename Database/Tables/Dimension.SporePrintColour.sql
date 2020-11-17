CREATE TABLE [Dimension].[SporePrintColour]
(
[SporePrintColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SporePrintColourDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Dimension].[SporePrintColour] ADD CONSTRAINT [PK_SporePrintColour] PRIMARY KEY CLUSTERED  ([SporePrintColourId]) ON [PRIMARY]
GO
