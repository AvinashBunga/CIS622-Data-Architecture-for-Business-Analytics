SELECT 
    tcm.ModelName AS "Model Name",
    tcm.BatterySize AS "Battery Size (kWh)",
    tcm.RangePerCharge AS "Range Per Charge (miles)",
    ts.QuantitySold AS "Units Sold",
    ts.CarSalePrice AS "Sale Price",
    ts.SaleDate AS "Date of Sale"
FROM 
    TeslaCarModels AS tcm
JOIN 
    TeslaSales2022 AS ts 
ON 
    tcm.ModelID = ts.ModelID;
