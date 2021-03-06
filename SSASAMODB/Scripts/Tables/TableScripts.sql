IF OBJECT_ID('ProactiveCaching','U') IS NOT NULL 
  DROP TABLE dbo.ProactiveCaching

IF OBJECT_ID('Partition','U') IS NOT NULL 
  DROP TABLE dbo.Partition

IF OBJECT_ID('AggregationDimension','U') IS NOT NULL 
  DROP TABLE dbo.AggregationDimension

IF OBJECT_ID('Aggregation','U') IS NOT NULL 
  DROP TABLE dbo.Aggregation

IF OBJECT_ID('AggregationDesign','U') IS NOT NULL 
  DROP TABLE dbo.AggregationDesign

IF OBJECT_ID('MeasureGroupDimension','U') IS NOT NULL 
  DROP TABLE dbo.MeasureGroupDimension

IF OBJECT_ID('Measure','U') IS NOT NULL 
  DROP TABLE dbo.Measure

IF OBJECT_ID('KPI','U') IS NOT NULL 
  DROP TABLE dbo.KPI

IF OBJECT_ID('MeasureGroup','U') IS NOT NULL 
  DROP TABLE dbo.MeasureGroup

IF OBJECT_ID('KPI','U') IS NOT NULL 
  DROP TABLE dbo.KPI

IF OBJECT_ID('AggregationDimension','U') IS NOT NULL 
  DROP TABLE dbo.AggregationDimension

IF OBJECT_ID('MeasureGroupDimension','U') IS NOT NULL 
  DROP TABLE dbo.MeasureGroupDimension

IF OBJECT_ID('HierarchyLevel','U') IS NOT NULL 
  DROP TABLE dbo.HierarchyLevel

IF OBJECT_ID('Hierarchy','U') IS NOT NULL 
  DROP TABLE dbo.Hierarchy

IF OBJECT_ID('HierarchyLevel','U') IS NOT NULL 
  DROP TABLE dbo.HierarchyLevel

IF OBJECT_ID('AttributeRelationship','U') IS NOT NULL 
  DROP TABLE dbo.AttributeRelationship

IF OBJECT_ID('AttributeKeyColumns','U') IS NOT NULL 
  DROP TABLE dbo.AttributeKeyColumns

IF OBJECT_ID('DimensionAttribute','U') IS NOT NULL 
  DROP TABLE dbo.DimensionAttribute

IF OBJECT_ID('CubeDimension','U') IS NOT NULL 
  DROP TABLE dbo.CubeDimension

IF OBJECT_ID('Cube','U') IS NOT NULL 
  DROP TABLE dbo.Cube

IF OBJECT_ID('ProactiveCaching','U') IS NOT NULL 
  DROP TABLE dbo.ProactiveCaching

IF OBJECT_ID('Partition','U') IS NOT NULL 
  DROP TABLE dbo.Partition

IF OBJECT_ID('AttributeKeyColumns','U') IS NOT NULL 
  DROP TABLE dbo.AttributeKeyColumns

IF OBJECT_ID('DataSourceViewTablecolumns','U') IS NOT NULL 
  DROP TABLE dbo.DataSourceViewTablecolumns

IF OBJECT_ID('DataSourceView','U') IS NOT NULL 
  DROP TABLE dbo.DataSourceView

IF OBJECT_ID('DataSource','U') IS NOT NULL 
  DROP TABLE dbo.DataSource

IF OBJECT_ID('Databases','U') IS NOT NULL 
  DROP TABLE dbo.Databases

IF OBJECT_ID('Server','U') IS NOT NULL 
  DROP TABLE dbo.Server




/****** Object:  Table [dbo].[Aggregation]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aggregation](
	[AggregationId] [int] NOT NULL,
	[AggregationDesignId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentMeasureGroup] [nvarchar](500) NULL,
	[ParentCube] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_Aggregation] PRIMARY KEY CLUSTERED 
(
	[AggregationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AggregationDesign]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregationDesign](
	[AggregationDesignId] [int] NOT NULL,
	[MeasureGroupId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[EstimatedRows] [nvarchar](500) NULL,
	[EstimatedPerformanceGain] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentCube] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_AggregationDesign] PRIMARY KEY CLUSTERED 
(
	[AggregationDesignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AggregationDimension]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregationDimension](
	[AggregationDimensionId] [int] NOT NULL,
	[AggregationId] [int] NULL,
	[DimensionId] [int] NULL,
 CONSTRAINT [PK_AggregationDimension_1] PRIMARY KEY CLUSTERED 
(
	[AggregationDimensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttributeKeyColumns]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeKeyColumns](
	[AttributeKeyColumnID] [int] NOT NULL,
	[AttributeID] [int]  NULL,
	[DSVTableColumnID] [int]  NULL,
 CONSTRAINT [PK_AttributeKeyColumns] PRIMARY KEY  
(
	[AttributeKeyColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttributeRelationship]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeRelationship](
	[Name] [nvarchar](500) NULL,
	[AttributeID] [int] NULL,
	[ParentAttributeID] [int] NULL,
	[RelationshipType] [nvarchar](500) NULL,
	[Cardinality] [nvarchar](500) NULL,
	[Optionality] [nvarchar](500) NULL,
	[OverrideBehavior] [nvarchar](500) NULL,
	[Visible] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDimension] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cube]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cube](
	[CubeId] [int] NOT NULL,
	[DatabaseId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[DataSourceId] [int] NULL,
	[DataSourceViewId] [int] NULL,
	[DefaultMdxScript] [nvarchar](500) NULL,
	[Language] [nvarchar](500) NULL,
	[Collation] [nvarchar](500) NULL,
	[DefaultMeasure] [nvarchar](500) NULL,
	[Visible] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[MdxScripts] [nvarchar](500) NULL,
	[AggregationPrefix] [nvarchar](500) NULL,
	[ProcessingPriority] [nvarchar](500) NULL,
	[StorageMode] [nvarchar](500) NULL,
	[ProcessingMode] [nvarchar](500) NULL,
	[StorageLocation] [nvarchar](500) NULL,
	[EstimatedRows] [nvarchar](500) NULL,
	[ScriptCacheProcessingMode] [nvarchar](500) NULL,
	[ScriptErrorHandlingMode] [nvarchar](500) NULL,
	[AllMeasures] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[LastProcessed] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
	[Container] [nvarchar](500) NULL,
 CONSTRAINT [PK_OLAPCube_1] PRIMARY KEY CLUSTERED 
(
	[CubeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CubeDimension]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CubeDimension](
	[CubeDimensionId] [int] NOT NULL,
	[CubeId] [int] NOT NULL,
	[DimensionID] [nvarchar](500) NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Visible] [nvarchar](500) NULL,
	[HierarchyUniqueNameStyle] [nvarchar](500) NULL,
	[MemberUniqueNameStyle] [nvarchar](500) NULL,
	[AllMemberAggregationUsage] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_OLAPCubeDimension_1] PRIMARY KEY CLUSTERED 
(
	[CubeDimensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Databases]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Databases](
	[DatabaseId] [int] NOT NULL,
	[ServerId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[LastUpdate] [nvarchar](500) NULL,
	[AggregationPrefix] [nvarchar](500) NULL,
	[ProcessingPriority] [nvarchar](500) NULL,
	[EstimatedSize] [nvarchar](500) NULL,
	[Visible] [nvarchar](500) NULL,
	[Language] [nvarchar](500) NULL,
	[Collation] [nvarchar](500) NULL,
	[MasterDataSourceID] [nvarchar](500) NULL,
	[ReadWriteMode] [nvarchar](500) NULL,
	[DbStorageLocation] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[ImageUniqueID] [nvarchar](500) NULL,
	[ImageVersion] [nvarchar](500) NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[StorageEngineUsed] [nvarchar](500) NULL,
	[CompatibilityLevel] [nvarchar](500) NULL,
	[DirectQueryMode] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[LastProcessed] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_OLAPDatabase_1] PRIMARY KEY CLUSTERED 
(
	[DatabaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataSource]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSource](
	[DataSourceId] [int] NOT NULL,
	[DatabaseId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[ConnectionString] [nvarchar](500) NULL,
	[ConnectionStringSecurity] [nvarchar](500) NULL,
	[Isolation] [nvarchar](500) NULL,
	[ManagedProvider] [nvarchar](500) NULL,
	[Timeout] [nvarchar](500) NULL,
	[MaxActiveConnections] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_DataSource] PRIMARY KEY CLUSTERED 
(
	[DataSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataSourceView]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSourceView](
	[DataSourceViewId] [int] NOT NULL,
	[DataSourceId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Schema] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_DataSourceViews_1] PRIMARY KEY CLUSTERED 
(
	[DataSourceViewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataSourceViewTablecolumns]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSourceViewTablecolumns](
	[DSVTableColumnID] [int] NOT NULL,
	[DataSourceViewId] [int] NULL,
	[ColumnName] [nvarchar](500) NULL,
	[Table] [nvarchar](500) NULL,
	[AllowDBNull] [nvarchar](500) NULL,
	[AutoIncrement] [nvarchar](500) NULL,
	[AutoIncrementSeed] [nvarchar](500) NULL,
	[AutoIncrementStep] [nvarchar](500) NULL,
	[Caption] [nvarchar](500) NULL,
	[Prefix] [nvarchar](500) NULL,
	[DataType] [nvarchar](500) NULL,
	[DateTimeMode] [nvarchar](500) NULL,
	[DefaultValue] [nvarchar](500) NULL,
	[Expression] [nvarchar](500) NULL,
	[MaxLength] [nvarchar](500) NULL,
	[Namespace] [nvarchar](500) NULL,
	[Ordinal] [nvarchar](500) NULL,
	[ReadOnly] [nvarchar](500) NULL,
	[Unique] [nvarchar](500) NULL,
	[ColumnMapping] [nvarchar](500) NULL,
	[Site] [nvarchar](500) NULL,
	[Container] [nvarchar](500) NULL,
	[DesignMode] [nvarchar](500) NULL,
	[PrimaryKey] [bit] NULL,
 CONSTRAINT [PK_DataSourceViewTablecolumns] PRIMARY KEY CLUSTERED 
(
	[DSVTableColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DimensionAttribute]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimensionAttribute](
	[CubeDimensionId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[Usage] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[EstimatedCount] [nvarchar](500) NULL,
	[NameColumn] [int] NULL,
	[DiscretizationMethod] [nvarchar](500) NULL,
	[DiscretizationBucketCount] [nvarchar](500) NULL,
	[RootMemberIf] [nvarchar](500) NULL,
	[OrderBy] [nvarchar](500) NULL,
	[DefaultMember] [nvarchar](500) NULL,
	[OrderByAttributeID] [nvarchar](500) NULL,
	[SkippedLevelsColumn] [nvarchar](500) NULL,
	[NamingTemplate] [nvarchar](500) NULL,
	[NamingTemplateTranslations] [nvarchar](500) NULL,
	[MembersWithData] [nvarchar](500) NULL,
	[MembersWithDataCaption] [nvarchar](500) NULL,
	[CustomRollupColumn] [nvarchar](500) NULL,
	[CustomRollupPropertiesColumn] [nvarchar](500) NULL,
	[UnaryOperatorColumn] [nvarchar](500) NULL,
	[ValueColumn] [int] NULL,
	[AttributeHierarchyOrdered] [nvarchar](500) NULL,
	[MemberNamesUnique] [nvarchar](500) NULL,
	[IsAggregatable] [nvarchar](500) NULL,
	[AttributeHierarchyEnabled] [nvarchar](500) NULL,
	[AttributeHierarchyOptimizedState] [nvarchar](500) NULL,
	[AttributeHierarchyVisible] [nvarchar](500) NULL,
	[AttributeHierarchyDisplayFolder] [nvarchar](500) NULL,
	[KeyUniquenessGuarantee] [nvarchar](500) NULL,
	[GroupingBehavior] [nvarchar](500) NULL,
	[InstanceSelection] [nvarchar](500) NULL,
	[ProcessingState] [nvarchar](500) NULL,
	[AttributeHierarchyProcessingState] [nvarchar](500) NULL,
	[FormatString] [nvarchar](500) NULL,
	[VisualizationProperties] [nvarchar](500) NULL,
	[OrderByAttribute] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hierarchy]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hierarchy](
	[HierarchyId] [int] NOT NULL,
	[CubeDimensionId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[DisplayFolder] [nvarchar](500) NULL,
	[AllMemberName] [nvarchar](500) NULL,
	[MemberNamesUnique] [nvarchar](500) NULL,
	[MemberKeysUnique] [nvarchar](500) NULL,
	[AllowDuplicateNames] [nvarchar](500) NULL,
	[ProcessingState] [nvarchar](500) NULL,
	[StructureType] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_Hierarchy] PRIMARY KEY CLUSTERED 
(
	[HierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HierarchyLevel]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HierarchyLevel](
	[LevelId] [int] NOT NULL,
	[HierarchyId] [int] NULL,
	[Id] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[HierarchyLevel] [tinyint] NULL,
	[HideMemberIf] [varchar](250) NULL,
	[SourceAttributeId] [int] NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[LevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KPI]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KPI](
	[KPIId] [int] NOT NULL,
	[CubeId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[DisplayFolder] [nvarchar](500) NULL,
	[AssociatedMeasureGroupID] [int] NULL,
	[Value] [nvarchar](500) NULL,
	[Goal] [nvarchar](500) NULL,
	[Status] [nvarchar](500) NULL,
	[Trend] [nvarchar](500) NULL,
	[Weight] [nvarchar](500) NULL,
	[TrendGraphic] [nvarchar](500) NULL,
	[StatusGraphic] [nvarchar](500) NULL,
	[CurrentTimeMember] [nvarchar](500) NULL,
	[ParentKpiID] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_KPI] PRIMARY KEY CLUSTERED 
(
	[KPIId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Measure]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measure](
	[MeasureId] [int] NOT NULL,
	[MeasureGroupId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[IsLinked] [nvarchar](500) NULL,
	[AggregateFunction] [nvarchar](500) NULL,
	[DataType] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[Visible] [nvarchar](500) NULL,
	[DisplayFolder] [nvarchar](500) NULL,
	[FormatString] [nvarchar](500) NULL,
	[BackColor] [nvarchar](500) NULL,
	[ForeColor] [nvarchar](500) NULL,
	[FontName] [nvarchar](500) NULL,
	[FontSize] [nvarchar](500) NULL,
	[FontFlags] [nvarchar](500) NULL,
	[MeasureExpression] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentCube] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_OLAPMeasure_1] PRIMARY KEY CLUSTERED 
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeasureGroup]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureGroup](
	[MeasureGroupId] [int] NOT NULL,
	[CubeId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[IsLinked] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[StorageMode] [nvarchar](500) NULL,
	[StorageLocation] [nvarchar](500) NULL,
	[IgnoreUnrelatedDimensions] [nvarchar](500) NULL,
	[EstimatedRows] [nvarchar](500) NULL,
	[EstimatedSize] [nvarchar](500) NULL,
	[ProcessingMode] [nvarchar](500) NULL,
	[AggregationPrefix] [nvarchar](500) NULL,
	[ProcessingPriority] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[LastProcessed] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_OLAPMeasureGroup_1] PRIMARY KEY CLUSTERED 
(
	[MeasureGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeasureGroupDimension]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureGroupDimension](
	[MeasureGroupDimensionId] [int] NOT NULL,
	[CubeDimensionId] [int] NOT NULL,
	[MeasureGroupId] [int] NOT NULL,
 CONSTRAINT [PK_OLAPMeasureGroupDimension_1] PRIMARY KEY CLUSTERED 
(
	[MeasureGroupDimensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partition]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partition](
	[PartitionId] [int] NOT NULL,
	[MeasureGroupId] [int] NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
	[ParentCube] [nvarchar](500) NULL,
	[ParentDatabase] [nvarchar](500) NULL,
	[ParentServer] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[ProcessingPriority] [nvarchar](500) NULL,
	[AggregationPrefix] [nvarchar](500) NULL,
	[StorageMode] [nvarchar](500) NULL,
	[CurrentStorageMode] [nvarchar](500) NULL,
	[ProcessingMode] [nvarchar](500) NULL,
	[StorageLocation] [nvarchar](500) NULL,
	[RemoteDataSourceID] [nvarchar](500) NULL,
	[Slice] [nvarchar](500) NULL,
	[ProactiveCaching] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[EstimatedSize] [nvarchar](500) NULL,
	[EstimatedRows] [nvarchar](500) NULL,
	[AggregationDesignID] [int] NULL,
	[AggregationInstanceSource] [nvarchar](500) NULL,
	[StringStoresCompatibilityLevel] [nvarchar](500) NULL,
	[CurrentStringStoresCompatibilityLevel] [nvarchar](500) NULL,
	[DirectQueryUsage] [nvarchar](500) NULL,
	[DataSourceId] [int] NULL,
	[DataSourceViewId] [int] NULL,
	[RemoteDataSource] [nvarchar](500) NULL,
	[LastProcessed] [nvarchar](500) NULL,
	[State] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
 CONSTRAINT [PK_Partition] PRIMARY KEY CLUSTERED 
(
	[PartitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProactiveCaching]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProactiveCaching](
	[ProactiveCachingId] [int] NOT NULL,
	[PartitionId] [int] NULL,
	[SilenceInterval] [nvarchar](500) NULL,
	[Latency] [nvarchar](500) NULL,
	[SilenceOverrideInterval] [nvarchar](500) NULL,
	[ForceRebuildInterval] [nvarchar](500) NULL,
	[Enabled] [nvarchar](500) NULL,
	[OnlineMode] [nvarchar](500) NULL,
	[AggregationStorage] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
 CONSTRAINT [PK_ProactiveCaching] PRIMARY KEY CLUSTERED 
(
	[ProactiveCachingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Server]    Script Date: 29-Mar-12 4:27:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server](
	[ServerId] [int] NOT NULL,
	[ID] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[ConnectionString] [nvarchar](500) NULL,
	[ConnectionInfo] [nvarchar](500) NULL,
	[SessionID] [nvarchar](500) NULL,
	[CaptureXml] [nvarchar](500) NULL,
	[CaptureLog] [nvarchar](500) NULL,
	[Connected] [nvarchar](500) NULL,
	[SessionTrace] [nvarchar](500) NULL,
	[Version] [nvarchar](500) NULL,
	[Edition] [nvarchar](500) NULL,
	[EditionID] [nvarchar](500) NULL,
	[ProductLevel] [nvarchar](500) NULL,
	[ProductName] [nvarchar](500) NULL,
	[ServerMode] [nvarchar](500) NULL,
	[IsLoaded] [nvarchar](500) NULL,
	[CreatedTimestamp] [nvarchar](500) NULL,
	[LastSchemaUpdate] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[SiteID] [nvarchar](500) NULL,
	[Parent] [nvarchar](500) NULL,
 CONSTRAINT [PK_Server] PRIMARY KEY CLUSTERED 
(
	[ServerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Aggregation]  WITH CHECK ADD  CONSTRAINT [FK_Aggregation_AggregationDesign] FOREIGN KEY([AggregationDesignId])
REFERENCES [dbo].[AggregationDesign] ([AggregationDesignId])
GO
ALTER TABLE [dbo].[Aggregation] CHECK CONSTRAINT [FK_Aggregation_AggregationDesign]
GO
ALTER TABLE [dbo].[AggregationDesign]  WITH CHECK ADD  CONSTRAINT [FK_AggregationDesign_MeasureGroup] FOREIGN KEY([MeasureGroupId])
REFERENCES [dbo].[MeasureGroup] ([MeasureGroupId])
GO
ALTER TABLE [dbo].[AggregationDesign] CHECK CONSTRAINT [FK_AggregationDesign_MeasureGroup]
GO
ALTER TABLE [dbo].[AggregationDimension]  WITH CHECK ADD  CONSTRAINT [FK_AggregationDimension_Aggregation] FOREIGN KEY([AggregationId])
REFERENCES [dbo].[Aggregation] ([AggregationId])
GO
ALTER TABLE [dbo].[AggregationDimension] CHECK CONSTRAINT [FK_AggregationDimension_Aggregation]
GO
ALTER TABLE [dbo].[AggregationDimension]  WITH CHECK ADD  CONSTRAINT [FK_AggregationDimension_CubeDimension] FOREIGN KEY([DimensionId])
REFERENCES [dbo].[CubeDimension] ([CubeDimensionId])
GO
ALTER TABLE [dbo].[AggregationDimension] CHECK CONSTRAINT [FK_AggregationDimension_CubeDimension]
GO
ALTER TABLE [dbo].[AttributeRelationship]  WITH CHECK ADD  CONSTRAINT [FK_AttributeRelationship_DimensionAttribute] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[DimensionAttribute] ([AttributeId])
GO
ALTER TABLE [dbo].[AttributeRelationship] CHECK CONSTRAINT [FK_AttributeRelationship_DimensionAttribute]
GO
ALTER TABLE [dbo].[AttributeRelationship]  WITH CHECK ADD  CONSTRAINT [FK_AttributeRelationship_DimensionAttribute1] FOREIGN KEY([ParentAttributeID])
REFERENCES [dbo].[DimensionAttribute] ([AttributeId])
GO
ALTER TABLE [dbo].[AttributeRelationship] CHECK CONSTRAINT [FK_AttributeRelationship_DimensionAttribute1]
GO
ALTER TABLE [dbo].[Cube]  WITH CHECK ADD  CONSTRAINT [FK_OLAPCube_OLAPDatabase1] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO
ALTER TABLE [dbo].[Cube] CHECK CONSTRAINT [FK_OLAPCube_OLAPDatabase1]
GO
ALTER TABLE [dbo].[CubeDimension]  WITH CHECK ADD  CONSTRAINT [FK_OLAPCubeDimension_OLAPCube] FOREIGN KEY([CubeId])
REFERENCES [dbo].[Cube] ([CubeId])
GO
ALTER TABLE [dbo].[CubeDimension] CHECK CONSTRAINT [FK_OLAPCubeDimension_OLAPCube]
GO
ALTER TABLE [dbo].[Databases]  WITH CHECK ADD  CONSTRAINT [FK_Database_Server] FOREIGN KEY([ServerId])
REFERENCES [dbo].[Server] ([ServerId])
GO
ALTER TABLE [dbo].[Databases] CHECK CONSTRAINT [FK_Database_Server]
GO
ALTER TABLE [dbo].[DataSource]  WITH CHECK ADD  CONSTRAINT [FK_DataSource_Database] FOREIGN KEY([DatabaseId])
REFERENCES [dbo].[Databases] ([DatabaseId])
GO
ALTER TABLE [dbo].[DataSource] CHECK CONSTRAINT [FK_DataSource_Database]
GO
ALTER TABLE [dbo].[DataSourceView]  WITH CHECK ADD  CONSTRAINT [FK_DataSourceViews_DataSource] FOREIGN KEY([DataSourceId])
REFERENCES [dbo].[DataSource] ([DataSourceId])
GO
ALTER TABLE [dbo].[DataSourceView] CHECK CONSTRAINT [FK_DataSourceViews_DataSource]
GO
ALTER TABLE [dbo].[DataSourceViewTablecolumns]  WITH CHECK ADD  CONSTRAINT [FK_DataSourceViewTablecolumns_DataSourceViews] FOREIGN KEY([DataSourceViewId])
REFERENCES [dbo].[DataSourceView] ([DataSourceViewId])
GO
ALTER TABLE [dbo].[DataSourceViewTablecolumns] CHECK CONSTRAINT [FK_DataSourceViewTablecolumns_DataSourceViews]
GO
ALTER TABLE [dbo].[DimensionAttribute]  WITH CHECK ADD  CONSTRAINT [FK_Attribute_CubeDimension] FOREIGN KEY([CubeDimensionId])
REFERENCES [dbo].[CubeDimension] ([CubeDimensionId])
GO
ALTER TABLE [dbo].[DimensionAttribute] CHECK CONSTRAINT [FK_Attribute_CubeDimension]
GO
ALTER TABLE [dbo].[Hierarchy]  WITH CHECK ADD  CONSTRAINT [FK_Hierarchy_CubeDimension] FOREIGN KEY([CubeDimensionId])
REFERENCES [dbo].[CubeDimension] ([CubeDimensionId])
GO
ALTER TABLE [dbo].[Hierarchy] CHECK CONSTRAINT [FK_Hierarchy_CubeDimension]
GO
ALTER TABLE [dbo].[HierarchyLevel]  WITH CHECK ADD  CONSTRAINT [FK_Level_DimensionAttribute] FOREIGN KEY([SourceAttributeId])
REFERENCES [dbo].[DimensionAttribute] ([AttributeId])
GO
ALTER TABLE [dbo].[HierarchyLevel] CHECK CONSTRAINT [FK_Level_DimensionAttribute]
GO
ALTER TABLE [dbo].[HierarchyLevel]  WITH CHECK ADD  CONSTRAINT [FK_Level_Hierarchy] FOREIGN KEY([HierarchyId])
REFERENCES [dbo].[Hierarchy] ([HierarchyId])
GO
ALTER TABLE [dbo].[HierarchyLevel] CHECK CONSTRAINT [FK_Level_Hierarchy]
GO
ALTER TABLE [dbo].[KPI]  WITH CHECK ADD  CONSTRAINT [FK_KPI_Cube] FOREIGN KEY([CubeId])
REFERENCES [dbo].[Cube] ([CubeId])
GO
ALTER TABLE [dbo].[KPI] CHECK CONSTRAINT [FK_KPI_Cube]
GO
ALTER TABLE [dbo].[KPI]  WITH CHECK ADD  CONSTRAINT [FK_KPI_MeasureGroup] FOREIGN KEY([AssociatedMeasureGroupID])
REFERENCES [dbo].[MeasureGroup] ([MeasureGroupId])
GO
ALTER TABLE [dbo].[KPI] CHECK CONSTRAINT [FK_KPI_MeasureGroup]
GO
ALTER TABLE [dbo].[Measure]  WITH CHECK ADD  CONSTRAINT [FK_OLAPMeasure_OLAPMeasureGroup] FOREIGN KEY([MeasureGroupId])
REFERENCES [dbo].[MeasureGroup] ([MeasureGroupId])
GO
ALTER TABLE [dbo].[Measure] CHECK CONSTRAINT [FK_OLAPMeasure_OLAPMeasureGroup]
GO
ALTER TABLE [dbo].[MeasureGroup]  WITH CHECK ADD  CONSTRAINT [FK_OLAPMeasureGroup_OLAPCube] FOREIGN KEY([CubeId])
REFERENCES [dbo].[Cube] ([CubeId])
GO
ALTER TABLE [dbo].[MeasureGroup] CHECK CONSTRAINT [FK_OLAPMeasureGroup_OLAPCube]
GO
ALTER TABLE [dbo].[MeasureGroupDimension]  WITH CHECK ADD  CONSTRAINT [FK_MeasureGroupDimension_CubeDimension] FOREIGN KEY([CubeDimensionId])
REFERENCES [dbo].[CubeDimension] ([CubeDimensionId])
GO
ALTER TABLE [dbo].[MeasureGroupDimension] CHECK CONSTRAINT [FK_MeasureGroupDimension_CubeDimension]
GO
ALTER TABLE [dbo].[MeasureGroupDimension]  WITH CHECK ADD  CONSTRAINT [FK_OLAPMeasureGroupDimension_OLAPMeasureGroup] FOREIGN KEY([MeasureGroupId])
REFERENCES [dbo].[MeasureGroup] ([MeasureGroupId])
GO
ALTER TABLE [dbo].[MeasureGroupDimension] CHECK CONSTRAINT [FK_OLAPMeasureGroupDimension_OLAPMeasureGroup]
GO
ALTER TABLE [dbo].[Partition]  WITH CHECK ADD  CONSTRAINT [FK_Partition_DataSourceView] FOREIGN KEY([DataSourceViewId])
REFERENCES [dbo].[DataSourceView] ([DataSourceViewId])
GO
ALTER TABLE [dbo].[Partition] CHECK CONSTRAINT [FK_Partition_DataSourceView]
GO
ALTER TABLE [dbo].[Partition]  WITH CHECK ADD  CONSTRAINT [FK_Partition_MeasureGroup] FOREIGN KEY([MeasureGroupId])
REFERENCES [dbo].[MeasureGroup] ([MeasureGroupId])
GO
ALTER TABLE [dbo].[Partition] CHECK CONSTRAINT [FK_Partition_MeasureGroup]
GO
ALTER TABLE [dbo].[ProactiveCaching]  WITH CHECK ADD  CONSTRAINT [FK_ProactiveCaching_Partition] FOREIGN KEY([PartitionId])
REFERENCES [dbo].[Partition] ([PartitionId])
GO
ALTER TABLE [dbo].[ProactiveCaching] CHECK CONSTRAINT [FK_ProactiveCaching_Partition]
GO
