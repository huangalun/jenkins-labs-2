﻿ALTER TABLE dbo.be_Pages ADD
	SortOrder int NOT NULL CONSTRAINT DF_be_Pages_SortOrder DEFAULT 0
GO
CREATE NONCLUSTERED INDEX IX_be_Pages ON dbo.be_Pages
	(
	SortOrder
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO