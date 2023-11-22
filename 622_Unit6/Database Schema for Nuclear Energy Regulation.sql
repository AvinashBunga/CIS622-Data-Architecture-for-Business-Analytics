CREATE TABLE Facilities (
    FacilityID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL,
    Location TEXT NOT NULL,
    RegulatoryStatus TEXT NOT NULL
);

CREATE TABLE Materials (
    MaterialID SERIAL PRIMARY KEY,
    Type TEXT NOT NULL,
    Quantity NUMERIC(10, 3) NOT NULL CHECK (Quantity >= 0),
    FacilityID INTEGER NOT NULL,
    FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID)
);

CREATE TABLE Inspectors (
    InspectorID SERIAL PRIMARY KEY,
    Name TEXT NOT NULL,
    CertificationDate DATE NOT NULL
);

CREATE TABLE Inspections (
    InspectionID SERIAL PRIMARY KEY,
    FacilityID INTEGER NOT NULL,
    InspectionDate DATE NOT NULL,
    InspectorID INTEGER NOT NULL,
    Outcome TEXT NOT NULL,
    FOREIGN KEY (FacilityID) REFERENCES Facilities(FacilityID),
    FOREIGN KEY (InspectorID) REFERENCES Inspectors(InspectorID)
);
