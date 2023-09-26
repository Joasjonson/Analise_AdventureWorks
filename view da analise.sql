

CREATE OR ALTER VIEW VW_ANALISE AS
SELECT
	FIS.SalesOrderNumber AS 'NUMERO PEDIDO',
	FIS.OrderDate AS 'DATA PEDIDO',
	DPC.EnglishProductCategoryName AS 'CATEGORIA PRODUTO',
	FIS.CustomerKey AS 'ID CLIENTE',
	DC.FirstName + ' ' + DC.LastName AS 'NOME CLIENTE',
	REPLACE(REPLACE(DC.Gender,'M','Masculino'),'F', 'Feminino') AS 'GENERO',
	DG.EnglishCountryRegionName AS 'PAIS',
	FIS.OrderQuantity AS 'QTD VENDIDA',
	FIS.SalesAmount AS 'RECEITA VENDA',
	FIS.TotalProductCost AS 'CUSTO VENDA',
	FIS.SalesAmount - TotalProductCost AS 'LUCRO VENDA'
FROM FactInternetSales FIS
INNER JOIN DimProduct DP ON FIS.ProductKey = DP.ProductKey
	INNER JOIN DimProductSubcategory DPS ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
		INNER JOIN DimProductCategory DPC ON DPS.ProductCategoryKey = DPC.ProductCategoryKey
INNER JOIN DimCustomer DC ON FIS.CustomerKey = DC.CustomerKey
	INNER JOIN DimGeography DG ON DC.GeographyKey = DG.GeographyKey
	
SELECT * FROM RESULTADO_ADW





	








































