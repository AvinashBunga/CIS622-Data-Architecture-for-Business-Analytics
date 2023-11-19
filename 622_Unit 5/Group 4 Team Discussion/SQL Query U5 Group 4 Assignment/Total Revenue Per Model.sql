--Total Revenue Per Model
SELECT 
    tcm.ModelID,
    tcm.ModelName AS "Model Name",
    SUM(ts.QuantitySold * ts.CarSalePrice) AS "Total Revenue"
FROM 
    TeslaCarModels AS tcm
JOIN 
    TeslaSales2022 AS ts 
ON 
    tcm.ModelID = ts.ModelID
GROUP BY 
    tcm.ModelID, tcm.ModelName
ORDER BY
	"Total Revenue" DESC;