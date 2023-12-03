-- GRANT USAGE: This gives the "Analysts" role permission to access and use the 'public' schema. It doesn't allow them to access the data in the tables yet, but they need this permission to perform operations that reference the schema's objects, like running a SELECT query.
GRANT USAGE ON SCHEMA public TO "Analysts";
-- GRANT SELECT: This part of the query gives the "Analysts" role the ability to perform SELECT operations on all existing tables within the 'public' schema. It's the permission needed to read data from tables.
-- ON ALL TABLES IN SCHEMA public: Specifies that the SELECT permission is given for every table within the 'public' schema.
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "Analysts";
-- ALTER DEFAULT PRIVILEGES: This changes the default privileges for new objects created in the future within the schema.
-- IN SCHEMA public: Specifies that the default privileges being changed are for objects in the 'public' schema.
-- GRANT SELECT ON TABLES TO "Analysts": Sets the default privilege for new tables so that the "Analysts" role will automatically have SELECT permissions on any new tables created in the 'public' schema after this command is run.
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO "Analysts";

