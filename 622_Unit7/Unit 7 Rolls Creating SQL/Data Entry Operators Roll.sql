--INSERT and UPDATE permissions on all tables within the 'public' schema. This will allow users assigned to the 'Data Entry Operators' role to add new data and modify existing data in the tables.
GRANT INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO "Data Entry Operators";
