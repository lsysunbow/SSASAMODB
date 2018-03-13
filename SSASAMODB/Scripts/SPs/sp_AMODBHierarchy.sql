IF OBJECT_ID('sp_AMODBHierarchy','P') IS NOT NULL
DROP PROC sp_AMODBHierarchy
GO
CREATE PROCEDURE sp_AMODBHierarchy
SELECT @HierarchyId = ISNULL(MAX(HierarchyId) ,0)+1
INSERT INTO dbo.Hierarchy
@AllowDuplicateNames,@ProcessingState,@StructureType,@Parent,@ParentDatabase,@ParentServer,@ID,@Name,
@Description,@SiteID
 

 
GO