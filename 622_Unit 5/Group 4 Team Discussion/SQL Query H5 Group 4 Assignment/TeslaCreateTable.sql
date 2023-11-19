CREATE TABLE TeslaCarModels (
    ModelID SERIAL PRIMARY KEY,
    ModelName VARCHAR(50),
    BatterySize INT,
    RangePerCharge INT
);

CREATE TABLE TeslaSales2022 (
    SaleID SERIAL PRIMARY KEY,
    ModelID INT,
    QuantitySold INT,
    CarSalePrice DECIMAL(10, 2),
    SaleDate DATE,
    FOREIGN KEY (ModelID) REFERENCES TeslaCarModels(ModelID)
);