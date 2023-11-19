-- Total quantity sold for each model
SELECT 
    tcm.ModelID,
    tcm.ModelName AS "Model Name",
    SUM(ts.QuantitySold) AS "Total Units Sold"
FROM 
    TeslaCarModels AS tcm
JOIN 
    TeslaSales2022 AS ts 
ON 
    tcm.ModelID = ts.ModelID
GROUP BY 
    tcm.ModelID, tcm.ModelName
ORDER BY
	"Total Units Sold" DESC;
