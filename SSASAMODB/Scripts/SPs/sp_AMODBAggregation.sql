IF OBJECT_ID('sp_AMODBAggregation','P') IS NOT NULL
DROP PROC sp_AMODBAggregation
GO
CREATE PROCEDURE sp_AMODBAggregation
SELECT @AggregationId = ISNULL(MAX(AggregationID),0) + 1
INSERT INTO dbo.Aggregation
@ParentDatabase,@ParentServer,@Description,@SiteID
 

 
GO