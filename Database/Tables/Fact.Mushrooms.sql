CREATE TABLE [Fact].[Mushrooms]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[CapShapeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CapColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OdorId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GillSizeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GillColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StalkColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VeilColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RingTypeId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SporePrintColourId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PopulationId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HabitatId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Longitude] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Latitude] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location] [sys].[geography] NULL,
[Time] [time] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [PK_Mushrooms] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_CapColour] ON [Fact].[Mushrooms] ([CapColourId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_Odor] ON [Fact].[Mushrooms] ([OdorId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_Population] ON [Fact].[Mushrooms] ([PopulationId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_RingType] ON [Fact].[Mushrooms] ([RingTypeId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_SporePrintColour] ON [Fact].[Mushrooms] ([SporePrintColourId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_StalkColour] ON [Fact].[Mushrooms] ([StalkColourId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Mushrooms_VeilColour] ON [Fact].[Mushrooms] ([VeilColourId]) ON [PRIMARY]
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_CapColour] FOREIGN KEY ([CapColourId]) REFERENCES [Dimension].[Colour] ([ColourId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_CapShape] FOREIGN KEY ([CapShapeId]) REFERENCES [Dimension].[CapShape] ([CapShapeId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_GillColour] FOREIGN KEY ([GillColourId]) REFERENCES [Dimension].[Colour] ([ColourId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_GillSize] FOREIGN KEY ([GillSizeId]) REFERENCES [Dimension].[GillSize] ([GillSizeId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_Habitat] FOREIGN KEY ([HabitatId]) REFERENCES [Dimension].[Habitat] ([HabitatId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_Odor] FOREIGN KEY ([OdorId]) REFERENCES [Dimension].[Odor] ([OdorId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_Population] FOREIGN KEY ([PopulationId]) REFERENCES [Dimension].[Population] ([PopulationId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_RingType] FOREIGN KEY ([RingTypeId]) REFERENCES [Dimension].[RingType] ([RingTypeId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_SportPrintColour] FOREIGN KEY ([SporePrintColourId]) REFERENCES [Dimension].[Colour] ([ColourId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_StalkColour] FOREIGN KEY ([StalkColourId]) REFERENCES [Dimension].[Colour] ([ColourId])
GO
ALTER TABLE [Fact].[Mushrooms] ADD CONSTRAINT [FK_Mushrooms_VeilColour] FOREIGN KEY ([VeilColourId]) REFERENCES [Dimension].[Colour] ([ColourId])
GO
