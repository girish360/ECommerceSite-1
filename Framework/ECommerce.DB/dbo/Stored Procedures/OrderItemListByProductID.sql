﻿
CREATE PROCEDURE [dbo].[OrderItemListByProductID]
	@product_id INT
AS

	/* Volume Technologies RADA Generator v6.1 */

	SELECT *
	INTO #temp
	FROM [OrderItem]
	WHERE [product_id] = @product_id

	SELECT *
	FROM #temp

	SELECT *
	FROM [Order]
	WHERE [ID] IN (SELECT [order_id] FROM #temp)

	SELECT *
	FROM [Product]
	WHERE [ID] IN (SELECT [product_id] FROM #temp)